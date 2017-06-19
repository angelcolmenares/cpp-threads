//https://stackoverflow.com/questions/25393001/boostasio-tcp-server-reading-a-message-from-the-client
#include <stdio.h>
#include <ctime>
#include <iostream>
#include <string>
#include <boost/bind.hpp>
#include <boost/shared_ptr.hpp>
#include <boost/enable_shared_from_this.hpp>
#include <boost/asio.hpp>
#include <pthread.h>

using std::string;
using boost::asio::ip::tcp;

std::string make_daytime_string()
{
    using namespace std; // For time_t, time and ctime;
    time_t now = time(0);
    return ctime(&now);
}

class tcp_connection
    : public boost::enable_shared_from_this<tcp_connection>
{
public:
    typedef boost::shared_ptr<tcp_connection> pointer;

    static pointer create(boost::asio::io_service& io_service) {
        return pointer(new tcp_connection(io_service));
    }

    tcp::socket& socket() {
        return socket_;
    }

    void start() 
    {
       start_read();
    }
    
    void set_callback(std::function<void(const string&)> action)
    {
        callback= action;
    }

private:
    tcp_connection(boost::asio::io_service& io_service)
        : socket_(io_service) {
    }
  
    tcp::socket socket_;
    boost::asio::streambuf input_buffer_;  
    std::function<void(const string&)> callback = [] (const string& msg){};
    
    void start_read() {
        // Start an asynchronous operation to read a newline-delimited message.
        // When read, handle_read should kick in
       boost::asio::async_read(socket_, input_buffer_,
                                boost::asio::transfer_at_least(1),
                                boost::bind(&tcp_connection::handle_read, shared_from_this(),
                                            boost::asio::placeholders::error));
    }

    // When stream is received, handle the message from the client
    void handle_read(const boost::system::error_code& ec) {
             
        if (!ec) {
            // Extract the newline-delimited message from the buffer.
            std::string line;
            std::istream is(&input_buffer_);
            std::getline(is, line);

            // Empty messages are heartbeats and so ignored.
            if (!line.empty())
            {    
                callback(line);
            }
            start_read();
        } 
        else
        {
            std::cout << "Error on receive: " << ec.message() << "\n";
        }
    }
};

class tcp_server
{
public:
    tcp_server(boost::asio::io_service& io_service, int port, void (*action)(const string&) )
        : acceptor_(io_service, tcp::endpoint(tcp::v4(), port )) {
            callback= action;
            start_accept();
    }
    

private:
    void start_accept() {
        tcp_connection::pointer new_connection =
            tcp_connection::create(acceptor_.get_io_service());
        new_connection->set_callback(callback);

        acceptor_.async_accept(new_connection->socket(),
                               boost::bind(&tcp_server::handle_accept, this, new_connection,
                                           boost::asio::placeholders::error));
    }

    void handle_accept(tcp_connection::pointer new_connection,
                       const boost::system::error_code& error) {
        if (!error) {
            new_connection->start();
        }

        start_accept();
    }

    tcp::acceptor acceptor_;
    std::function<void(const string&)> callback = [] (const string&){};
};


int main(int argc, char **argv)
{

    int port = 13000;
    try {
        boost::asio::io_service io_service;
        tcp_server server(io_service, port,
        [](const string& msg)
        {
            std::cout<<"msg :" << msg << std::endl;
        });
        io_service.run();
    } catch (std::exception& e) {
        std::cerr << e.what() << std::endl;
    }

    return 0;
}

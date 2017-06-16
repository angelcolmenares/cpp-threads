#include <stdio.h>

#include <iostream>
#include <boost/array.hpp>
#include <boost/asio.hpp>
#include <string>

using boost::asio::ip::tcp;
using std::string;

enum { max_length = 1024 };

int main(int argc, char **argv)
{

    string port_service="13000";

    try {
        if (argc != 2) {
            std::cerr << "Usage: client <host>" << std::endl;
            return 1;
        }

        boost::asio::io_service io_service;

        tcp::resolver resolver(io_service);
        tcp::resolver::query query(argv[1], port_service);
        tcp::resolver::iterator endpoint_iterator = resolver.resolve(query);

        tcp::socket socket(io_service);
        boost::asio::connect(socket, endpoint_iterator);

        /*for (;;) {
            boost::array<char, 128> buf;
            boost::system::error_code error;

            size_t len = socket.read_some(boost::asio::buffer(buf), error);

            if (error == boost::asio::error::eof)
                break; // Connection closed cleanly by peer.
            else if (error)
                throw boost::system::system_error(error); // Some other error.

            std::cout.write(buf.data(), len);
        }*/
        
        
        //
        //using namespace std; // For strlen.
    std::cout << "Enter message: ";
    char request[max_length];
    std::cin.getline(request, max_length);
    size_t request_length = strlen(request);
    boost::asio::write(socket, boost::asio::buffer(request, request_length));

    char reply[max_length];
    size_t reply_length = boost::asio::read(socket,
        boost::asio::buffer(reply, request_length));
    std::cout << "Reply is: ";
    std::cout.write(reply, reply_length);
    std::cout << "\n";
    
    std::cout << "Enter message: ";
    std::cin.getline(request, max_length);
    request_length = strlen(request);
    boost::asio::write(socket, boost::asio::buffer(request, request_length));
    
        
      
        
    } catch (std::exception& e) {
        std::cout<< "error ...."<< std::endl;
        std::cerr << e.what() << std::endl;
    }
        

    return 0;
}

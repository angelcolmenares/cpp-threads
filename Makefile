.PHONY: clean All

All:
	@echo "----------Building project:[ socket_server - Release ]----------"
	@cd "socket_server" && "$(MAKE)" -f  "socket_server.mk"
clean:
	@echo "----------Cleaning project:[ socket_server - Release ]----------"
	@cd "socket_server" && "$(MAKE)" -f  "socket_server.mk" clean

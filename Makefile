.PHONY: clean All

All:
	@echo "----------Building project:[ firstcpp - Release ]----------"
	@"$(MAKE)" -f  "firstcpp.mk"
clean:
	@echo "----------Cleaning project:[ firstcpp - Release ]----------"
	@"$(MAKE)" -f  "firstcpp.mk" clean

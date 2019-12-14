.PHONY : all

all : generate goodbye

cpp = g++

generate:
	@read -p "Enter your cpp name (without extension) : " name; \
	read -p "Enter your bash script file name : " bash; \
	${cpp} $$name.cc -o  $$bash; \
	echo "This is your bash script file"; \
	ls | grep $$bash; \
	echo "Let's we run your script"; \
	chmod +x $$bash; \
	./$$bash; \

goodbye:
	@echo ""; \
	echo ""; \
	echo "See ya later"; \

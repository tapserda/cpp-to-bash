.PHONY : all

all : generate goodbye

cpp = g++

generate:
	@read -p "Enter your cpp name (without extension) : " name; \
	read -p "Enter your bash script file name : " bash; \
	${cpp} $$name.cc -o  $$bash; \
	echo "Giving your script permission..."; \
	chmod +x $$bash; \

goodbye:
	echo "See ya later"; \

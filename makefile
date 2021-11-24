#Variables
o = gcc -c
w = -Wall -Wextra
a = SDA2_TP5_TRENY_Teo.tar.gz

#General
all : main.e

clean :
	rm -rf *.o *.e *.tar.gz

super-clean :
	make clean
	rm -rf html latex doxygen-awesome-css Doxyfile

archive :
	make clean
	tar -czvf $(a) *

doxyfile :
	make super-clean
	doxycss.sh

#exe
main.e : main.o
	gcc main.o -o main.e

#debug

#Main
main.o : main.c
	$(o) $(w) main.c -o main.o
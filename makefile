#Variables
o = gcc -c
w = -Wall -Wextra
a = SDA2_TP5_TRENY_Teo.tar.gz

#General
all : triPopulation.e

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
triPopulation.e : triPopulation.o
	gcc triPopulation.o -o triPopulation.e

#debug

#Main
triPopulation.o : triPopulation.c
	$(o) $(w) triPopulation.c -o triPopulation.o
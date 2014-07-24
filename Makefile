default: lib

# Builds the shared library
lib: libfisatty.c
	gcc -shared -Wl,-soname,libfisatty.so.1 -o libfisatty.so.1.0  libfisatty.c 
	ln -fs libfisatty.so.1.0 libfisatty.so.1
	ln -fs libfisatty.so.1 libfisatty.so

install:
	cp -v libfisatty.so* /usr/lib
	cp -v fisatty /usr/bin

uninstall:
	rm -v /usr/lib/libfisatty.so*
	rm -v /usr/bin/fisatty

clean:
	rm -fv libfisatty.so*



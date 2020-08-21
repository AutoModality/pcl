SHELL := /bin/bash

	mkdir -p build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && make -j2 

default:

install:
	install -d $(DESTDIR)/usr
	cp -f -p -r build/lib $(DESTDIR)/usr/bin 
	cp -f -p -r build/share $(DESTDIR)/usr/bin 
	cp -f -p -r build/include $(DESTDIR)/usr/bin 

clean:
	rm -rf build
	rm -rf *.deb
SHELL := /bin/bash

BUILD_DIR=build
default:
	mkdir -p ${BUILD_DIR} && cd ${BUILD_DIR} && cmake -DCMAKE_BUILD_TYPE=Release .. && make -j2


install:
	rm -rf build/install
	mkdir -p build/install
	install -d $(DESTDIR)/usr/
	cp -f -p -r build/install/lib $(DESTDIR)/usr/bin || echo "Did not copy lib directory"
	cp -f -p -r build/install/share $(DESTDIR)/usr/bin || echo "Did not copy share directory"
	cp -f -p -r build/install/include $(DESTDIR)/usr/bin || echo "Did not copy include directory"
	rm -f $(DESTDIR)/usr/bin/lib/pkgconfig/catkin_tools_prebuild.pc

clean:
	rm -rf build
	rm -rf *.deb
SHELL := /bin/bash

BUILD_DIR=build
INSTALL_DIR=$(DESTDIR)/usr/
default:
	mkdir -p ${BUILD_DIR} && cd ${BUILD_DIR} && cmake -DCMAKE_BUILD_TYPE=Release .. && make -j2
	echo "Done Making $(DESTDIR)" 

install:
	install -d ${INSTALL_DIR}
	cp -f -p -r ${BUILD_DIR}/lib ${INSTALL_DIR} 
	cp -f -p -r ${BUILD_DIR}/bin ${INSTALL_DIR}
	cp -f -p -r ${BUILD_DIR}/include ${INSTALL_DIR}

clean:
	rm -rf ../*.deb
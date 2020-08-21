SHELL := /bin/bash

BUILD_DIR=build
INSTALL_DIR=$(DESTDIR)/usr/
default:
	mkdir -p ${BUILD_DIR} && cd ${BUILD_DIR} && cmake -DCMAKE_BUILD_TYPE=Debug -DBUILD_GPU=ON -DBUILD_CUDA=OFF -DCUDA_ARCH_BIN=6.2 -DCUDA_ARCH_PTX=6.2 -DCMAKE_INSTALL_PREFIX=/usr .. && make -j3
	echo "Done Making $(DESTDIR)" 

install:
	install -d ${INSTALL_DIR}
	cp -f -p -r ${BUILD_DIR}/lib ${INSTALL_DIR} 
	cp -f -p -r ${BUILD_DIR}/bin ${INSTALL_DIR}
	cp -f -p -r ${BUILD_DIR}/include ${INSTALL_DIR}

clean:
	rm -rf ../*.deb

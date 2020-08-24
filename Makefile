SHELL := /bin/bash

BUILD_DIR=build
INSTALL_DIR=/usr
STAGING_DIR=$(DESTDIR)/${INSTALL_DIR}
VERSION=pcl-1.9
SHARE_DIR=/share
SHARE_STAGING_DIR=${STAGING_DIR}/${SHARE_DIR}
INCLUDE_DIR=/include
INCLUDE_STAGING_DIR=${STAGING_DIR}/${INCLUDE_DIR}

default:
	mkdir -p ${BUILD_DIR} && cd ${BUILD_DIR} && cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} .. && make -j8 && sudo make -j8 install 


install:
	mkdir -p ${SHARE_STAGING_DIR}
	mkdir -p ${INCLUDE_STAGING_DIR}
	cp -rf ${BUILD_DIR}/bin ${STAGING_DIR}
	cp -rf ${BUILD_DIR}/lib ${STAGING_DIR}
	cp -rf ${INSTALL_DIR}/${SHARE_DIR}/${VERSION} ${SHARE_STAGING_DIR}
	cp -rf ${INSTALL_DIR}/${INCLUDE_DIR}/${VERSION} ${INCLUDE_STAGING_DIR}
	install -d ${INSTALL_DIR}

clean:
	rm -rf ../*.deb
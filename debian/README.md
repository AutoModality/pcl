# Debian packaging for PCL 


# Requirements

This version of library has cuda functionlity enabled. Therefore, make sure you have cuda installed on your machine, and the related environment variables are set. The followings are the environment variables for cuda >= 10.2 (copy and paste the followings into your .bashrc)

```
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64
export PATH=$PATH:$CUDA_HOME/bin
```


Install dependencies:

```
sudo apt install libeigen3-dev libflann-dev libvtk6-dev
```

## Generate Binary


Prerequisites:

```
  apt-get install -y debhelper 
```

From the root of the project:
```
fakeroot debian/rules binary
```

The binary will be produced in the directory above the project root.  

```
../pcl_1.9.1-1_amd64.deb
```

This file should be manually uploaded to the appropriate [cloudsmith repository](https://cloudsmith.io/~automodality/repos/release/packages).

Versions are maintained in the `debian/changelog` file.  Incremental versioning should be used with a hyphen separation keeping the prefix version the same as the PCL tag version. 

```
pcl (1.9.1-1) unstable; urgency=medium
pcl (1.9.1-2) unstable; urgency=medium
pcl (1.9.1-3) unstable; urgency=medium
...

pcl (1.11.0-1) unstable; urgency=medium
pcl (1.11.0-2) unstable; urgency=medium
...
```

Targeting different CUDA versions?  TBD, but likely an additional variant would be added to the version suffix (`1.9.1-cuda-6.2-1`).

### Clean

Rebuild debian artifact:

```
debian/rules clean
```

# How It Works

The debian packaging mostly scripts the recommended directions for compiling PCL, which stages all build files in the `obj-aarch64-linux-gnu` directory.  
The install staging directory is located in `debian/pcl` 
The debian files are mostly generated using:

```
bloom-generate debian
```

Some debian files were modified since generate to cater to the build and could be easily reproduced if necessary:

**debian/rules**

```
override_dh_auto_configure:
	# In case we're installing to a non-standard location, look for a setup.sh
	# in the install tree that was dropped by catkin, and source it.  It will
	# set things like CMAKE_PREFIX_PATH, PKG_CONFIG_PATH, and PYTHONPATH.
	if [ -f "/usr/setup.sh" ]; then . "/usr/setup.sh"; fi && \
	dh_auto_configure -- \
	    -DBUILD_GPU=ON \
		-DBUILD_CUDA=OFF \
		-DCUDA_ARCH_BIN=7.2 \
		-DCUDA_ARCH_PTX=7.2 \
		-DCMAKE_BUILD_TYPE=Release \
		-DCATKIN_BUILD_BINARY_PACKAGE="1" \
		-DCMAKE_INSTALL_PREFIX="/usr" \
		-DCMAKE_PREFIX_PATH="/usr"
```


# Version History

## 1.9.1-2 

* Built on arm-builder-3 by Aaron Roller 12/27/2020 
* Adds Nvidia Xavier NX support

```
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2019 NVIDIA Corporation
Built on Wed_Oct_23_21:14:42_PDT_2019
Cuda compilation tools, release 10.2, V10.2.89
```
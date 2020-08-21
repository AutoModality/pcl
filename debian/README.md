# Debian packaging for PCL 


# Requirements

This version of library has cuda functionlity enabled. Therefore, make sure you have cuda installed on your machine, and the related environment variables are set. The followings are the environment variables for cuda >= 10.0 (copy and paste the followings into your .bashrc)

export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64
export PATH=$PATH:$CUDA_HOME/bin

## Generate Binary


Prerequisites:

```
  apt-get -y \
      debhelper 
```

From the root of the project:
```
fakeroot debian/rules binary
```


### Clean

Rebuild debian artifact:

```
debian/rules clean
```

Recompile:

```
rm -rf build
```

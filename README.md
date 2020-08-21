# Point Cloud Library

<img src="pcl.png" align="center" height="100">

Continuous integration
----------------------
[![Release][release-image]][releases]
[![License][license-image]][license]

[release-image]: https://img.shields.io/badge/release-1.9.1-green.svg?style=flat
[releases]: https://github.com/PointCloudLibrary/pcl/releases

[license-image]: https://img.shields.io/badge/license-BSD-green.svg?style=flat
[license]: https://github.com/PointCloudLibrary/pcl/blob/master/LICENSE.txt

[![Build Status](https://dev.azure.com/PointCloudLibrary/pcl/_apis/build/status/PointCloudLibrary.pcl)](https://dev.azure.com/PointCloudLibrary/pcl/_build/latest?definitionId=1)

Description
-----------
The Point Cloud Library (PCL) is a standalone, large scale, open project for 2D/3D image and point cloud processing.

PCL is released under the terms of the BSD license, and thus free for commercial and research use. We are financially supported by a consortium of commercial companies, with our own non-profit organization, Open Perception. We would also like to thank individual donors and contributors that have been helping the project.

Requirements
------------
This version of library has cuda functionlity enabled. Therefore, make sure you have cuda installed on your machine, and the related environment variables are set. The followings are the environment variables for cuda >= 10.0 (copy and paste the followings into your .bashrc)

export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64
export PATH=$PATH:$CUDA_HOME/bin

Compiling
---------
Please refer to the platform specific tutorials:
 - [Linux](http://www.pointclouds.org/documentation/tutorials/compiling_pcl_posix.php)
 - [Mac OS X](http://www.pointclouds.org/documentation/tutorials/compiling_pcl_macosx.php)
 - [Microsoft Windows](http://www.pointclouds.org/documentation/tutorials/compiling_pcl_windows.php)

Documentation
-------------
- [Tutorials](http://www.pointclouds.org/documentation/tutorials/)
- [PCL trunk documentation](http://docs.pointclouds.org/trunk/) (updated daily)

Contributing
------------
Please read [CONTRIBUTING.md](https://github.com/PointCloudLibrary/pcl/blob/master/CONTRIBUTING.md).

Issues
------
For general questions on how to use the PCL, please use the [pcl-users](http://www.pcl-users.org/) mailing list (do not forget to subscribe before posting).
To report issues, please read [CONTRIBUTING.md#bug-reports](https://github.com/PointCloudLibrary/pcl/blob/master/CONTRIBUTING.md#bug-reports).

API/ABI Compatibility Report
------
For details about API/ABI changes over the timeline please check PCL's page at [ABI Laboratory](https://abi-laboratory.pro/tracker/timeline/pcl/).

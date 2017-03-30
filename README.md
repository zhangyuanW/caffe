# Windows Caffe with improved MATLAB interfaces


**This work is forked from `windows` branch of `BLVC/caffe` (see [here](https://github.com/BVLC/caffe/tree/windows)). It aims to improve stability and usability of the MATLAB interfaces for the original caffe version.**

## Major improvements:

 - Prevent Matlab from crushing when a `FATAL` message is detected in caffe, and handle the exception gracefully within Matlab
 - Log error messages (or all the messages) to Matlab 
 - Add `CTRL-C` interruption support when training with Matlab
 - Add matlab interfaces to change log destination in file system

## Known Issues
 - Currently, this code is only tested with GTX 1060 and Visual Studio (VS2013). Please change the `CommonSettings.props.example` accordingly to your system. If you use CMake, you may need to add `$(MatlabDir)\extern\lib\win64\microsoft\libut.lib`, `libmx.lib` and `libmex.lib` to additional dependencies in order for the `CTRL-C` interruption to work.
 - It is known that Matlab interface cannot handle exceptions in `db_lmdb`, which is run in another thread.

## Visual Studio based build

Please see the [README.md](windows/README.md) in the `windows` folder for details.

## CMake based build 
Please see the [CMake_BUILD.md](CMake_Build.md), which is copied from the original `README.md` for details.

## Further Details

Refer to the BVLC/caffe master branch README for all other details such as license, citation, and so on.

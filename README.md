# ZLX-Library
Refreshing this for 2025 current state of things. Everything compiles, figured I would leave some instructions.

To build a libxenon binary: `make` after installing libxenon from https://github.com/Free60Project/libxenon
To build and install the static library: `sudo -E make -f Makefile_lib install`
To build the XeLL level 1 image: `make -f Makefile.xell`

For now NTFS and EXT2FS are disabled due to linker errors.

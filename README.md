# ZLX-Library
Refreshing this for 2025 current state of things. Everything compiles, figured I would leave some instructions.

- To build a libxenon binary: `make` after installing libxenon from https://github.com/Free60Project/libxenon
    - It will build the default browser example by default
    - Place ressources on a USB drive. Delete one of the two `png` images, and the non-png fonts.
- To build and install the static library: `sudo -E make -f Makefile_lib install`
    - This will allow one to call ZLX functions from libxenon homebrew programs to make a custom hybrid program.
- To build the XeLL level 1 image: `make -f Makefile.xell xell_lv1`

For now NTFS and EXT2FS are disabled due to linker errors.

Changes:
	- TFTP
		- Add script to help maintain list of files in TFTPROOT. Code will ignore duplicate filenames.
            - Skeleton for rudimentary "list files on tftproot" functionality
		- Makefile and other script changes/additions
            - `set TFTPROOT="/some/path"` to set a server directory. Export to bashrc to use elsewhere.
		    - `make run` will store executables in $TFTPROOT and maintain the directory listing.
            - `make clean` will remove executables from $TFTPROOT to update the directory listing.

    - XeLL
        - Updated lv1 code to 2025 current master in xell-reloaded.

    - Library
        - Start both a text and telnet console - change to Hw.cpp (bringup)
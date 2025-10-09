#!/bin/bash
# Set TFTPROOT in session or bashrc

# Delete the old directory listing.
rm $TFTPROOT/dir.txt

# Create a new directory listing.
for entry in "$TFTPROOT"/*
do
  echo "$entry" >> $TFTPROOT/dir.txt
done

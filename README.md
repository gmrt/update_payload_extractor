## System requirement

- Python3, pip
- google protobuf for python `pip3 install protobuf`

### Full OTA

- LD_LIBRARY_PATH=./lib64/ ./extract.py --output_dir output/ payload.bin
- This will start to extract the images within the payload.bin file to the output folder you are in.

### Incremental OTA

- Copy original images (from full OTA or dumped from devices) to old folder (with part name without file extension, ex: boot, system)
- LD_LIBRARY_PATH=./lib64/ ./extract.py --output_dir output/ --old_dir old/ payload.bin

NOTE: this has been fixed for Incremental updates.  Just ensure you use the ROM that was meant to be PATCHED in the old/ directory
AS THE HASH CHECKS ARE TURNED OFF.  The original project never worked because the HASH of the Incremental update and the prior full ROM
always had different signatures.  So there is NO ERROR CHECKING HAPPENING.  Works as of 8/2021, tested on Op8T.

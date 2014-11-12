synoscripts
===========

Collection of some useful (at least for me) scripts for a Synology NAS.

**NOTE:** These scripts use ash and tools available on a Synology NAS running DSM 5.1. I didn't check if they work on other operating systems and/or earlier versions of the DSM.

As always: Look at the script before you run it. I'm not responsible if you kill your system.

###rename_date_in_filename.sh

Renames files with the format ```IMG_YYYYMMDD_HHMMSS.JPG``` to ```YYYY-MM-DD HH.MM.SS.JPG```


###rename_from_creation_date.sh

Uses the date function to extract the creation date of all files (except .sh) and renames the file ```SOMEFILENAME.SUFFIX``` to ```YYYY-MM-DD HH.MM.SS.SUFFIX```

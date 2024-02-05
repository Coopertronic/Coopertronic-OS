# Coopertronic-OS
Making my own Archlinux spin. I am now on version 0.052 and have a working calamares installer.

You can clone the repo from here and I suggest that you run it in an arch x86_64 VM.

## My ArchISO build script

With the reop cloned to the home user directory, I advise you edit the end of the script that sends it to an external storage location. I have set it to use my local ddns storage via sshfs. You may have different needs like a NFS storage or a dedicated NAS. Feel free to edit the script.

My build script runs purely as root. It is designed to be a fire and forget script that does everything in one got only prompting the user at the end to copy it to an external source or not. 

The script will make 2 folders in home that are called ISO_Build and ISO_Dump. These have root permissions so the resulting ISO will have to have the permissions/ownership changed. If you are using SSHFS then preserving the permissions on copy will fail and the ISO will be a normal file any user can use after it has been transferred to the external storage.

### Thanks to

Many thanks to the people on the Rebourne OS and Bred OS discord servers. You have been a tremendous help in getting me through the difficult learning curve.

Many thanks to EZarcher that made it possible to get calamares up and running without error.

I will be updating this readme with links to their respective projects.

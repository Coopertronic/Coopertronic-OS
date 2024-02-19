# Coopertronic-OS
Making my own Archlinux spin. I am now on version 0.052 and have a working calamares installer.

You can clone the repo from here and I suggest that you run it in an arch x86_64 VM. The password is *"cooper"*. You will need this to login and install Coopertronic-OS.

Version 0.064 upwards can be installed on bare metal, but do not try to install Nvidia proprietary drives as they will fail the whole system, leaving you with nothing but a blank screen on reboot.

## My ArchISO build script

With the repo cloned to the home user directory, I advise you edit the end of the script that sends it to an external storage location. I have set it to use my local ddns storage via sshfs. You may have different needs like a NFS storage or a dedicated NAS. Feel free to edit the script.

My build script runs purely as root. It is designed to be a fire and forget script that does everything in one got only prompting the user at the end to copy it to an external source or not. 

The script will make 2 folders in home that are called ISO_Build and ISO_Dump. These have root permissions so the resulting ISO will have to have the permissions/ownership changed. If you are using SSHFS then preserving the permissions on copy will fail and the ISO will be a normal file any user can use after it has been transferred to the external storage.

## GUI Package Managers

I am including 2 GUI package manages because I can't make up my mind yet. Both Pamac and Discover are installed as default and should update and install everything. Discover should update global themes and other stuff installed via the KDE store.

### Thanks to

Many thanks to DistroTube who inspired me to do this with his videos. [Website](https://distro.tube/) [YouTube](https://www.youtube.com/DistroTube) [Odysee](https://odysee.com/@DistroTube:2) [GitLab](https://gitlab.com/dwt1)

Many thanks to the people on the [Reborn OS](https://rebornos.org/) and [Bred OS](https://bredos.org/) discord servers. You have been a tremendous help in getting me through the difficult learning curve.

Many thanks to [EZarcher](https://sourceforge.net/projects/ezarch/) that made it possible to get calamares up and running without error.

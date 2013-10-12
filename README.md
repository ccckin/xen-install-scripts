# Xen Install Tool
This configuration files and scripts help to install Xen hypervisor. I installed Xen in many Linux distributions like Ubuntu, Debian, CentOS and finally I found the Archlinux is the most easily used. Hope you enjoy the Archlinux and Xen. Let's begin.

# Requirement
1. Make sure you have Archlinux installed and Update all the system packages to the latest.
2. Download the xen 4.1.2, other version may have different compile errors or problems. You can investigate yourself after you familiar with the Xen. 
3. The current gcc version is 4.8 in Archlinux package repository. Since gcc 4.7 and gcc 4.8 will produce compile error for xen-4.1.2, I put build patches for gcc 4.7 and gcc 4.8. I also have configured these patches in PKGBUILD for you and you do not need to do yourself.

# Compile The Linux Kernel
Make sure the net-frontend and block-frontend driver are *compiled into the kernel*, not modules.
The kernel config file in kernel dir may be helpful for you. I suggest you to use my config file and 3.2.6 kernel the first time.

# Compile Xen
When compile xen the first time, just
`cd  xen-install-tool/xen`
`makepkg`
The makepkg tool will make a Archlinux install package for you. Then install it by:
`sudo pacman -U xen-4.1.2-1-x86_64.pkg.tar.xz`

# Install DomainU
After you prepare the kernel and have installed xen. My scirpts will help you install DomainU.
`cd domu`
`bash build.sh`

# Demo video for reading the source code
[Emacs+Cscope](http://pan.baidu.com/s/1pBUkF)

[SourceInsight](http://pan.baidu.com/s/11hlTy)


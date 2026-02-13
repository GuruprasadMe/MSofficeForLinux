# MS Office For Linux (Legitimate Software - Use your own Subscription)
Quick Intro: A Single script, that will enable you the installation of MS Office installable on Ubuntu Desktop.

Here’s a single script, developed by me, that you can use to set up LinOffice on Ubuntu and automatically create desktop shortcuts for Word, Excel, and PowerPoint.
This script installs a legitimate copy(almost like BYOL) of MS Office from the original CDN in a container. This customized software is most popularly known as "LinOffice", which was NOT developed by me. 
This script initiates installation and creates shortcuts natively on your linux desktop.

Use this as install_linoffice.sh and run it with bash.

The minimum requirements for running LinOffice (Customized installation procedure for MS Office on Linux).
The minimum system requirements for running LinOffice on Linux are tied to the fact that it launches a Windows virtual machine in the background to run Microsoft Office. 
That means your hardware must support virtualization.

Hardware Requirements
CPU: x86_64 processor (Intel or AMD)

Virtualization: Intel VT-x or AMD-V enabled in BIOS

KVM Access: /dev/kvm must be available (checked during setup)

RAM: Minimum 4 GB (8 GB recommended for smoother performance)

Disk Space: At least 10 GB free (more if installing multiple Office versions)

Graphics: Standard GPU support; no special requirements beyond FreeRDP compatibility

Software Requirements
Operating System: Ubuntu 20.04 or later

Packages: Git, FreeRDP (freerdp2-x11), and virtualization tools (QEMU/KVM)

File System: Must support containerized VM storage (ext4 recommended)

Network Requirements
Stable internet connection for downloading Office and updates

Optional: Microsoft account login if upgrading to Office 365

LinOffice validates these requirements during installation — the setup.sh script checks CPU architecture, virtualization support, and KVM access before proceeding.

After completion, you’ll find Word, Excel, and PowerPoint (LinOffice) in your Ubuntu application menu, ready to launch like native apps.

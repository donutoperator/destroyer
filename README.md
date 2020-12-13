# destroyer
#### Destroyer it's a simple bash script without any dependencies which will make your hard drive unbreakable for government agencies in the ex-USSR countries.


## How to run:

### Warning! Before use make sure that you have a basic knowledge about linux systems, disks and bash scripts.

The developer is not responsible for any data loss due to the use of this script.

Please, do not run destroyer when $FILE variable is set but USB drive is not connected

1. ### Open up your terminal and run following commands in your home directory:
    `git clone https://github.com/donutoperator/destroyer.git && cd destroyer/`

    `chmod +x destroyer.sh`

2. ### Then open file destroyer.sh with your favorite editor and set variables in lines 3 and 4
    `FILE - set this variable to any file located in mounted to your PC USB Drive`

    `DISK - set this variable to your drive path`

    If you are not familiar with linux - you can get your disk path by running
    `lsblk` command in your terminal and check your output. For me it would be:
    `nvme0n1     259:0    0   477G  0 disk` so "/dev/nvme0n1" is my disk.
    You should find a line with "disk" in "TYPE" table.
   
3. ### Run destroyer.sh with sudo privileges
    `sudo bash destroyer.sh`
   
4. ### Stop destroyer.sh
    If you are in a safe place and want to stop the script - simply use CTRL+C hotkey on active terminal 
    (this is the window where the script is running)
    
    Destroyer will not remove any data wnen stopped, so you can plug out your USB Drive safely
   

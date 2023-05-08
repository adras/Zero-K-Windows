# Zero-K-Windows
This project aims to allow compilation of zero-k/spring on windows.

Since compilation on windows is considered troublesome this project relies on Windows Subsystem for Linux (WSL)

# Setup
* Clone this repository

Next, we're installing wsl
* open a command line as administrator
* Navigate to the directory of the repository you just cloned. e.g. C:\myrepos\Zero-K-Windows
* Execute ```setupenv.bat```
When this is the first time you install WSL on your machine, of if the following steps cause some trouble, 
make sure to reboot Windows after this step.
* You will be asked for a username and password. After that the debian shell should be ready
* Type ```exit``` and some more stuff will be installed, so you're prompted for your password a few times

To start WSL (with correct paths), use:
* Execute ```launchenv.bat```

Now you should be within the linux shell. From here enter:
* ```./linuxsetup.sh```

This sets up all the packages which are required for compilation

After that, you can start compiling spring. To do that:
* ```cd spring```
* ```cmake .```
* ```make spring```
* (optional) ```install spring```

The ```setupenv.bat``` and ```linuxsetup.sh``` only need to be run once for installation.

# Bugs report

* **00001** : Vivado won't start on Ubuntu 20.4 due to libcommon5.so missing libraries
```Bash
sudo apt update
sudo apt install libtinfo-dev
sudo ln -s /lib/x86_64-linux-gnu/libtinfo.so.6 /lib/x86_64-linux-gnu/libtinfo.so.5
```

* **00002** : Vivado won't start on Fedora 33 due to missing libraries
```Bash
sudo dnf install ncurses-compat-libs
```
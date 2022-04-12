# Bugs report

* **00001** : Vivado won't start on Ubuntu 20.4 due to libcommon5.so missing libraries

```Bash
sudo apt update
sudo apt install libtinfo-dev
sudo ln -s /lib/x86_64-linux-gnu/libtinfo.so.6 /lib/x86_64-linux-gnu/libtinfo.so.5
```

---

* **00002** : Vivado won't start on Fedora 33 due to missing libraries

```Bash
sudo dnf install ncurses-compat-libs
```

---

* **00003** : Wrong setup RAM ZCU102

Boards presets on ZCU102 do not necessarly match the RAM installed due end of line notification initial component. Details are found [here](https://www.xilinx.com/support/answers/71961.html).

---

* **00004** : Can't load templates from custom platform on Vitis 2020.2

```Bash
# In vivado tcl console
set_property platform.uses_pr 0 [current_project]
```

---

* **00005** : Can't detect board in hardware manager (linux)

Because of required root access to install drivers, cable drivers on linux aren't install by installer so as you need to install them on your own

```Bash
cd {vivado_install_dir}/data/xicom/cable_drivers/lin64/install_script/install_drivers/
sudo ./install_drivers
```

---

* **00006** : Can't connect serial port, permission denied (linux)

Usually, the user has restricted access rights on serial ports or USB. A quick workaround is to add the device port to the user group.

```Bash
sudo chown <username> <serial port>
```

Another workaround is to elevate user's privileges on devices ports but it requires more steps.

* **00007** : Vitis HLS fail to export module

If the error is something like :

```Bash
ERROR: '2204121055' is an invalid argument. Please specify an integer value. 
while executing "rdi::set_property core_revision 2204121055 {component component_1}" invoked from within "set_property core_revision $Revision $core (file "run_ippack.tcl" line 819)
```

Then the patch is [here](https://support.xilinx.com/s/article/76960?language=en_US)
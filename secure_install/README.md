# Getting started

This folder is dedicated to creating a secure OS for the linux installation.  
> nb: This was built using Ubuntu

The `install.sh` installs the dependencies for installing and running `ansible` before finally running a *dry run* of the ansible configuration.

After the installation has completed you can run the *live* script with:

```
sudo ./install.sh --check false
```

This sample was developed against `Ubuntu 20.4 LTS`



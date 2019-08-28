# Install Guide


```bash
mkdir rgbds
```
Then download [**rgbds**](https://github.com/bentley/rgbds/). 
You'll need version 0.3.3 or later. Extract the archive and put all the .exe and .dll files in crystal386/rgbds.

To build **crystal386.gbc**:



## Linux

Python 2.7 is required.

```bash
sudo apt-get install make python gcc git bison

git clone https://github.com/rednex/rgbds.git
cd rgbds
sudo make install
cd ..

git clone https://github.com/resonancellc/crystal386.git
cd crystal386
```

To build **crystal386.gbc**:

```bash
make
```

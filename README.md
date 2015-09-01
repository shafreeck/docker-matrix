# Configure once , run anywhere !

[![Docker Repository on Quay.io](https://quay.io/repository/shafreeck/matrix/status "Docker Repository on Quay.io")](https://quay.io/repository/shafreeck/matrix)

Matrix is a development stack environment for developers

## Introduction

Matrix supplies a consistent development environment whenever you change a computer, or
you just work on multiple computers or cross  different operating systems.

## Usage
```
docker pull shafreeck/matrix:centos
docker run -d -p 2222:22 -v $HOME:/root shafreeck/matrix:centos
ssh root@localhost -p 2222
```

The default password is `toor`

Now `shafreeck/matrix:centos` has been built on multiple platforms, you can choose what you prefer:

Pull from quay.io
```
docker pull quay.io/shafreeck/matrix
```

If you live in china, daocloud maybe a better choice
```
docker pull daocloud.io/shafreeck/matrix
```


## Issues
Feel free to fire an issue if you want more awesome tools to be integrated or submit a pull request if you want to share 
your enhancement !

## Integrated tools

### Default shell
fishshell

### Editors
vim
emacs
nano

### Network
nmap
nc
nping
ngrep
tcpdump
aircrack
wget
ssh/sshd

### Systools
sysstat
dstat
strace
ltrace
htop
blktrace
ab
perf

### Development
gcc/g++/make/autotools
cmake
git

### Language
ruby
golang
python

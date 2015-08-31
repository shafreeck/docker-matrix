# Configure once , run anywhere !

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

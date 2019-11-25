# My docker for pwn
A docker environment for pwn in ctf based on ubuntu18.04, just treat it as a simple docker container.
    
## Tools


### Included tools for pwn

- [pwntools](https://github.com/Gallopsled/pwntools)  —— CTF framework and exploit development library
- [pwngdb](https://github.com/scwuaptx/Pwngdb) —— Gdb for pwn
- [ROPgadget](https://github.com/JonathanSalwan/ROPgadget)  —— Facilitate ROP exploitation tool
- [one_gadget](https://github.com/david942j/one_gadget) —— A searching one-gadget of execve('/bin/sh', NULL, NULL) tool for amd64 and i386
- [seccomp-tools](https://github.com/david942j/seccomp-tools) —— Provide powerful tools for seccomp analysis
- [Peda](https://github.com/longld/peda) —— Python Exploit Development Assistance for GDB
- [ltrace](https://linux.die.net/man/1/ltrace)      —— trace library function call
- [strace](https://linux.die.net/man/1/strace)     —— trace system call

### Other tools

- Debugger
  - gdb
- General Tools
  - tmux
  - vim
  - wget
  - curl
  - make
  - gcc, g++
  - socat, netcat
  - sudo
  - python, python3, python-pip, python3-pip
  - ruby, ruby-dev
  - nasm
  - radare2
    

## How to use

### Docker pull from Docker Hub

```
$ docker pull alvinzhan/ubuntu18.04_for_pwn
```

### Start to use
    
    docker run -it --name {{your_container_name}} {{image}} {{command}}
    docker start -ia {{your_container_name_or_id}}
    docker exec -it {{your_container_name_or_id}} /bin/bash
    

## Contributor

If you want to add some tools and packages, please feel free to pull-request.

Please let me know if you have any idea to make it better.
* u10100155@lssh.tp.edu.tw

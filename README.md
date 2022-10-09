# IT STEP University DevOps Homework

[![GitHub](https://img.shields.io/badge/GitHub-100000)](https://github.com/povstenko/devops)
[![Apache 2.0](https://img.shields.io/aur/license/android-studio.svg?)](https://www.apache.org/licenses/LICENSE-2.0/)

![image](https://user-images.githubusercontent.com/45174840/194770794-1bbbabc2-f3d8-4ffb-bf1b-801738445f8b.png)

Repository of DevOps home works of the student **4CS-22** group of [Vitalii Povstenko](https://github.com/povstenko)

Teacher: [Oleh Skoropad](https://github.com/sko-lv)

## Table of Contents
-
-
-

## Homework 1

- Create repo hometask1    (do not forget .gitignore)
- Create Vagrantfile 
  + Centos 7
  + Provision Nginx server 
  + Forward port 80 → 8888
  + Place site content to ~/www-content (*)
- Push your project to github (and add user sko-lv as colaborator)
 
Commands to install nginx on Centos
```
yum install -y epel-release
yum install -y nginx
systemctl start nginx
systemctl enable nginx
```
### Success criteria:
```
$ vagrant up
```
- In your browser goto localhost:8888
- See content placed to ~/www-content (*): 

![image](https://user-images.githubusercontent.com/45174840/194771682-05fed2c2-3c8e-4cbd-a098-68fa69029909.png)

## Homework 2

### Task
- Vimtutor  (run vimtutor on your ubuntu vm)
- .bashrc
- Terminal shortcuts
- Tricky question: how to prevent command to save in history

### Vagrant task
- create repo hometask2 . 
- create VM using the same Vagrantfile as hometask1
- create new git branch `doublevm`
- update Vagrantfile for create two VM’s named: centos and ubuntu from single Vagrantfile (RAM 2GB, centos/7 and ubuntu/focal64) See here for manual. https://www.vagrantup.com/docs/multi-machine
  
### Success criteria:
```
$ git clone <your-repo>
```
```
$ cd <your-repo>/hw2
```
```
$ vagrant up
```
```
$ vagrant ssh vm1; vagrant ssh vm2
```
    
## Homework 3
## Homework 4
## Homework 5
## Homework 6
## Homework 7

Study version of LAMP server for Vagrant
=============

Web server configuration using chef.
Used solely for study purposes, for more complex version see https://github.com/tsusanka/vagrant-lamp-server.

## Setup

### Install software

- install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
 - *Do NOT install version 4.3.10, it contains bug [#12879](https://www.virtualbox.org/ticket/12879) which breaks file sharing.*
- install [Vagrant](http://www.vagrantup.com/downloads.html)

### Get ready

- clone this repository and enter the directory
- set your working directory in Vagrantfile on line 37, for example `/home/tomas/Work/`

### Run it

- Run `vagrant up` and wait.

When the command finishes you can finally use it. After entering IP `10.11.12.13` into your browser you should see a welcome message.

## Use

The list of vagrant commands is listed in its [documentation](http://docs.vagrantup.com/v2/cli/index.html), however you most likely will need only those:

- `vagrant up` launches the OS
- `vagrant halt` shuts down the OS
- `vagrant ssh` SSH into the OS to control the OS
- `vagrant provision` updates OS' configuration according to Chef instructions
- `vagrant destroy` destroys the OS


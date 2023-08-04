# Ansible plays for Trellis

This is a really hacky and basic automated build that currently works on GNU/Linux.

## Requirements
- ansible >= [core 2.15.0]
- python3 on the remote

## Usage

- get Ansible that is this or higher version. `apt install ansible` on later Fuckbuntus - like 20.04 or 22.04 should work. Red Hat can fuck off. 
- change a few obvious parameters in `ansible.cfg` such as your ssh keys path etc
- change the `hosts.ini` file as needed or even rewrite it like boss with `echo 1.2.3.4 > hosts.ini` <where 1.2.3.4 is obviously an ipv4 address !>a

Then you are ready to rock n roll. 
```bash
ansible-playbook install_trellis_on_debian_x86.yml -i hosts.ini -l linode -v
```

- if you run into errors, then add more `-vvvvvvvvvvvvvvvv` to see all logs. Above example follows the hosts.ini file in the repo. If you overwrite it, omit the `-l` argument.  

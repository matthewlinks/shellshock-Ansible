shellshock-Ansible
==================

This is a proof-of-prinicple to show that Ansible can be used to patch BASH on OS X

Specifically for CVE-2014-6271 and CVE-2014-7169

Work in this project is based off of the posting(s) of alblue - alblue.bandlem.com

Main reference is his evolving post 
http://apple.stackexchange.com/questions/146849/how-do-i-recompile-bash-to-avoid-shellshock-the-remote-exploit-cve-2014-6271-an/146851#146851

His post is marked as https://creativecommons.org/licenses/by-sa/3.0/ in the footer and so that license has be used here too. 

This Ansible example is the work of elmccarthy and matthewlinks

If you are looking to adapt this for use you will need to ensure that you have 
- Ansible
- SSH access to your OS X hosts 
- sudo access is required for Ansible to be able to swap out the bash and sh versions
- the OS X hosts need to have Xcode installed

Setting up Ansible, SSH and sudo access is an exercise left to the reader. 

As with most Ansible usage you will need to define your inventory of hosts (OSX-hosts below).

Once your inventory is configured you might check that the syntax is ok 

	ansible-playbook -i OSX-hosts shellshock.yml --syntax-check

Then you might confirm what the tasks that will be run are

	ansible-playbook -i OSX-hosts shellshock.yml --list-tasks

And if you are sure that you want to run this then you could try 

	ansible-playbook -i OSX-hosts shellshock.yml

cheers

# env-automata
Automate the install of various tools and environment settings using ansible.  
Mainly with the goal of automating myself away and removing the pain of each new ubuntu VM.

Be aware that this is mainly a project for me to learn ansible and to customize my environment. Feel free to borrow stuff from it, but don't expect you'll like my preferences if you run this against your own VM :p

I'd only recommend to use this for your play-around VMs, not for production machines

## Setup
Install ansible
```sudo ./install-ansible.sh```

## Running remote
Test if your ansible connection to your VM works  
> ```ansible-playbook -i localVM -k -K playbooks/test-run.yml --extra-vars "rem_ssh_user=SSH_USERNAME"```

Run the entire playbook
> ```ansible-playbook -i localVM -k -K site.yml --extra-vars "rem_ssh_user=SSH_USERNAME"```

Run individual playbooks
> ```ansible-playbook -i localVM -k -K pb_user-prefs.yml --extra-vars "rem_ssh_user=SSH_USERNAME"```

## Running locally (after zip download or git clone)
Edit the file localVM and replace the current line with
> ```localhost ansible_connection=local```

Test if your local ansible connection works  
> ```ansible-playbook -i localVM -K playbooks/test-run.yml --extra-vars "rem_ssh_user=LOCAL_USERNAME"```

Run the entire playbook
> ```ansible-playbook -i localVM -K site.yml --extra-vars "rem_ssh_user=LOCAL_USERNAME"```

Run individual playbooks
> ```ansible-playbook -i localVM -k -K pb_user-prefs.yml --extra-vars "rem_ssh_user=LOCAL_USERNAME"```

## Activities performed

* Configure base firewall
* Configure launcher
* Configure gedit
* Configure .bashrc and .bashrc.d
  * add ability to rename gnome-terminal tabs
* Install base apps
* Install CLI utilities


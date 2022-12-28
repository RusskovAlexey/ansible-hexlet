start:	pingall touchfile

touchfile:
	ansible all -i inventory.ini -m file -a 'path=/home/alex/config state=touch'

pingall:
	ansible all -i inventory.ini -u alex -m ping

tags:
	ansible-playbook --check playbook.yml -i inventory.ini -t add-user

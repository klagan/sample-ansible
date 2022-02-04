# Getting started

```bash
# ensure openssh server is installed
sudo apt-get install openssh-server openssh-client

# run playbook as root (remember to exclude check)
sudo ansible-playbook -K ./my_playbook.yaml -u root —check
```

---
[source](https://galaxy.ansible.com/docs/contributing/creating_role.html)

```
# creates the basic folder structure you see in this repository
ansible-galaxy init <role-name>
```

## Modules

[lineinfile](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/lineinfile_module.html)

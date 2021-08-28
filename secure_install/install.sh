#!/bin/bash
# e.g. ./script --param value
check=${check:-true}

while [ $# -gt 0 ]; do
   if [[ $1 == *"--"* ]]; then
        param="${1/--/}"
        declare $param="$2"
        # echo $1 $2 # to see the parameter:value result
   fi
  shift
done

sudo apt update
sudo apt install -y curl python3 python3-pip
python3 -m pip install --user ansible
sudo apt install -y ansible

sudo ansible-galaxy collection install -r requirements.yml

if [ "$check" = "false" ]; then sudo ansible-playbook install.yml; else sudo ansible-playbook install.yml --check; fi 

echo "Script complete (check = $2 -> $check)"

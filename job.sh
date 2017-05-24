#!/bin/bash

email=saedalav@gmail.com
output_path=/home/saedalav/Desktop/output.txt
root_directory=/home/saedalav/Desktop/database

cd $root_directory

source /home/saedalav/.bashrc


echo "Starting Ansible Commands"
echo "-------------------------"

ansible-playbook provisionDB.yml -vvv


echo "Ansible Command Completed"
echo "-------------------------"

echo "Sending Email:"
echo "-------------------------"

cat $output_path | mail -s "Ansible Output Logs" $email


echo "Job Finished Successfully"


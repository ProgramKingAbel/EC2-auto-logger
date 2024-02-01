#!/bin/bash

downloads_folder=~/Downloads
aws_ssl_folder=~/AWS_SSL
pem_file=labsuser.pem

# check it pem file exists in downloads

if [ -e "$downloads_folder/$pem_file" ]; then
	# move pem file to AWS_SSL folder overwritting any contents
	
	mv -f "$downloads_folder/$pem_file" "$aws_ssl_folder/$pem_file"
	echo "Success! labsuser.pem moved to $aws_ssl_folder. Proceeding to login..."

	cd "$aws_ssl_folder" || exit

	# Prompt for my EC2 instance public IPV4 address
	read -p "Hi Abel what ec2 instance IPV4 address are you using today?: " ssh_parameters

	# change pemfile permissions to readonly
	chmod 400 "$pem_file"

	# ssh to the instance
	
	ssh -i "$pem_file" ec2-user@"$ssh_parameters"

	if [ $? -ne 0]; then
		echo "Error: SSH connection failed. Check params and try again."
	fi

else
	echo "No labsuser.pem file found in $downloads_folder..."
fi



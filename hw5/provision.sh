#!/bin/bash

sudo mkdir /home/folder1/
sudo mkdir /home/folder2/

cat /vagrant/move_files.service > /etc/systemd/system/move_files.service

systemctl daemon-reload
systemctl start move_files.service
systemctl enable move_files.service
#!/bin/bash

mkdir /folder{1,2}
cat /vagrant/move_files.service > /etc/systemd/system/move_files.service
systemctl daemon-reload
systemctl start files-mover.service
systemctl enable files-mover.service
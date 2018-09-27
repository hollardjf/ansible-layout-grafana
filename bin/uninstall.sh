#!/usr/bin/env bash

sudo systemctl stop grafana-server
sudo apt-get -y remove grafana
sudo rm -rf /etc/apt/sources.list.d/packagecloud_io_grafana_stable_debian.list
sudo rm -rf /var/lib/grafana
sudo rm -rf /var/log/grafana
sudo find /etc -name "*grafana*" -exec rm -rf {} \;
sudo userdel -fr grafana       
sudo groupdel grafana
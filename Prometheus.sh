#!/bin/sh
mkdir prometheus
cd prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.39.1/prometheus-2.39.1.linux-amd64.tar.gz
ls
tar -xvf prometheus-2.39.1.linux-amd64.tar.gz
cp -r . /usr/local/bin/prometheus
sudo vi /etc.systems/system/prometheus.service
[Unit]
Description=Prometheus #Description
After=network-online.target
[Service]
Type=simple
ExecStart=/usr/local/bin/prometheus --config.file=/usr/local/bin/prometheus/prometheus.yml
[Install]
WantedBy=multi-user.target
sudo service prometheus start
sudo service prometheus status
weget https://github.com/prometheus/node_exporter/releases/download/v1.40/node_exporter-1.4.0.linux-amd64.tar.gz
tar -xvf  node_exporter-1.4.0.linux-amd64.tar.gz
ls node_exporter-1.4.0.linux-amd64
sudo cp node_exporter-1.4.0.linux-amd64/node_exporter /usr/local/bin
sudo vi /etc/systemd/system/node-exporter.service
[Unit]
Description=Prometheus Node Exporter Service
ExporterAfter=network.target
[Service]
Type=simple
ExecStart=/usr/local/bin/node_exporter
[Install]
WantedBy=multi-user.target
sudo service start node-exporter
sudo service status node-exporter 


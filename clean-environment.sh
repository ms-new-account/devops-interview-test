#!/bin/bash

echo "Removing ActiveMQ service..."
sudo systemctl stop activemq.service
sudo systemctl disable activemq.service
sudo rm /etc/systemd/system/activemq.service
sudo systemctl daemon-reload
sudo systemctl reset-failed
sudo systemctl daemon-reload

echo "Removing log files..."
sudo rm -rf /var/log/alfresco

echo "Removing data files..."
sudo rm -rf /var/opt/alfresco

echo "Removing configuration files..."
sudo rm -rf /etc/opt/alfresco

echo "Removing binary files..."
sudo rm -rf /opt/alfresco
sudo rm -rf /opt/apache-activemq-*
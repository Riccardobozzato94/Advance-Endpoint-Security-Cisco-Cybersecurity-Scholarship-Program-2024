#!/bin/bash

# Installazione di Snort su Linux
echo "Installing Snort on Linux..."

# Installa Snort
sudo apt-get install -y snort

# Configura Snort per monitorare il traffico di rete
echo "Configuring Snort..."

# Definisci le reti da monitorare
sudo sed -i 's/ipvar HOME_NET any/ipvar HOME_NET 192.168.1.0\/24/' /etc/snort/snort.conf

# Avvia Snort
sudo snort -A console -i eth0 -c /etc/snort/snort.conf

echo "Snort installation and configuration completed."

#!/bin/bash

# Configurazione di UFW (Uncomplicated Firewall) su Linux
echo "Configuring UFW on Linux..."

# Abilita UFW
sudo ufw enable

# Permetti il traffico SSH
sudo ufw allow ssh

# Blocca tutto il traffico in ingresso eccetto SSH
sudo ufw default deny incoming

# Permetti tutto il traffico in uscita
sudo ufw default allow outgoing

# Aggiungi regole personalizzate (es. blocca un IP specifico)
sudo ufw deny from 192.168.1.100

# Visualizza lo stato di UFW
sudo ufw status

echo "UFW configuration completed."

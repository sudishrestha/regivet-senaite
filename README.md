installation

      docker compose up -d

backup

      sudo nano /usr/local/bin/auto_backup.sh
      sudo chmod +x /usr/local/bin/auto_backup.sh
      
      Test it manually:
            /usr/local/bin/auto_backup.sh
      crontab -e
         0 * * * * /usr/local/bin/auto_backup.sh >> /var/log/auto_backup.log 2>&1


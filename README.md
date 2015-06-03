## No Sleep

App to keep Heroku dynos from sleeping. (I know, this is probably wrong/lame/cheap). Whatever.

Installed on a Raspberry Pi running Raspbian OS.

## systemd service

```
[Unit]
Description=No Sleep For Heroku
After=syslog.target
After=network.target

[Service]
Type=simple
User=no-sleep
Group=no-sleep
ExecStart=/bin/ruby /path/to/no_sleep.rb

# Give a reasonable amount of time for the server to start up/shut down
TimeoutSec=300

[Install]
WantedBy=multi-user.target
```

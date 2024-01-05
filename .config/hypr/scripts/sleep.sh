set idle_timeout = 900
set suspend_timeout = 1800

swayidle -w timeout $idle_timeout 'swaylock -f -c 000000' \
            timeout $suspend_timeout 'systemctl suspend' \
            before-sleep 'swaylock -f -c 000000' &

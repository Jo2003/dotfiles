truncate -s0 /var/opt/adva/aos/log/tracelog/aosFwHal.log
rm -f /var/opt/adva/aos/log/tracelog/aosFwHal.log.*
sync
echo "/debug/aosCoreSirm/sirm/shutdownSystem warm" | aosCoreDteConsole -c


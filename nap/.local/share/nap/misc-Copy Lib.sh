sync
mount -o remount,rw /opt/adva
export TOCOPY=$(cd /tmp && ls lib*.so)
mkdir -p /opt/adva/aos/lib/backup
for f in ${TOCOPY} ; do if [ ! -f /opt/adva/aos/lib/backup/${f} ] ; then cp -v /opt/adva/aos/lib/${f} /opt/adva/aos/lib/backup/ ; fi ; done
cp -v /tmp/lib* /opt/adva/aos/lib/
sync

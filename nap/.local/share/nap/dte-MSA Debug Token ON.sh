cat << EOF > /var/opt/adva/aos/framework/hal/msa.tracehelper.json
{
    "hbmlib.msadev" : 1,
    "hbmlib.msadev.err" : 1,
    "msa.memdevs" : 0,
    "msa.memdevs.err" : 1,
    "msa.slowjobtask" : 1,
    "msa.slowjobtask.err" : 1,
    "msalib.statemachine" : 1,
    "msalib.statemachine.err" : 1,
    "splugpolltask" : 1,
    "splugpolltask.err" : 1,
    "hbmapi.msa.err" : 0,
    "msaval.conv.err" : 0
}
EOF

echo "/debug/aosFwHal/dbgtok set hbmlib.msadev cyan" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set hbmlib.msadev.err magenta" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msa.memdevs cyan" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msa.memdevs.err magenta" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msalib.statemachine cyan" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msalib.statemachine.err magenta" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set splugpolltask cyan" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set splugpolltask.err magenta" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msa_all_set yellow" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msaval.conv.err magenta" | aosCoreDteConsole -c
echo "/debug/aosFwHal/trace-log/enable-in-memory-buffer off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/trace-log/flush" | aosCoreDteConsole -c


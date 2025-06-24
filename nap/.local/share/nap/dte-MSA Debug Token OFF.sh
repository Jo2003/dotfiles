rm /var/opt/adva/aos/framework/hal/msa.tracehelper.json

echo "/debug/aosFwHal/dbgtok set hbmlib.msadev off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set hbmlib.msadev.err off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msa.memdevs off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msa.memdevs.err off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msalib.statemachine off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msalib.statemachine.err off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set splugpolltask off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set splugpolltask.err off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msa_all_set off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/dbgtok set msaval.conv.err off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/trace-log/enable-in-memory-buffer off" | aosCoreDteConsole -c
echo "/debug/aosFwHal/trace-log/flush" | aosCoreDteConsole -c


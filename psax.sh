#!/bin/bash

proc_uptime=$(awk '{printf("%d:%02d:%02d:%02d\n",($1/60/60/24),($1/60/60%24),($1/60%60),($1%60))}' /proc/uptime)

pstty(){
        ttynr=$(awk '{print $7}' /proc/$pid/stat)
        echo $ttynr
}

psstatus(){
        procstatus=$(grep "State:" /proc/$pid/status | awk -F:  '{print substr($2,2)}')
        echo $procstatus
}

psnice(){
        procnice=$(awk '{print $19}' /proc/$pid/stat)
        echo $procnice
}

pstime(){
        utime=$(awk '{print $14}' /proc/$pid/stat)
        stime=$(awk '{print $17}' /proc/$pid/stat)
        sumtime=$((utime + stime))
        cputime=$(date -u -d @$(($sumtime/$hertz)) +"%T")
        echo $cputime
}

pscmd(){
        proccmd=$(sed -e 's/\x00/ /g' -e 's!$!\n!' /proc/$pid/cmdline)
        echo $proccmd
}

hertz=$(getconf CLK_TCK)
allpids=$(ls /proc | grep -E '^[0-9]+$' | sort -n)
echo -e "PID\tTTY\tSTAT\t\tNICE\tTIME\t\tCOMMAND"
for pid in $allpids; do
        if [ -e /proc/$pid ];then
                echo -e "$pid\t$(pstty)\t$(psstatus)\t$(psnice)\t$(pstime)\t$(pscmd)"
        fi
done
echo "uptime: $proc_uptime"
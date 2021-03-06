key_words="(certificate|auth|session|token|key|ak|sk)(\s*:|\s*=|\"\s*(:|=)|\'\s*(:|=)).*[0-9a-zA-Z]{20,}"
find /var -name '*.log' -type f | xargs file |grep -E 'text|XML|PC bitmap data'|awk '{print $1}'|sed 's/:$//g'|xargs grep -i -n -E -H "$key_words" | egrep -v 'bash_history|Binary file|containerScan|vmSecureScan|/devicemapper/mnt' 2>/dev/null
find /var -name '*.dat' -type f | xargs file |grep -E 'text|XML|PC bitmap data'|awk '{print $1}'|sed 's/:$//g'|xargs grep -i -n -E -H "$key_words" | egrep -v 'bash_history|Binary file|containerScan|vmSecureScan|/devicemapper/mnt' 2>/dev/null



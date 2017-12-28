#
# This command file launches the VM/370 SixPack.
# Ensure that the Hercules executable (hercules) is in your path.
#

export configfile="zDebian.cnf"
export logfile="log.txt"

if [ -r ${logfile} ];
then
rm -rf ${logfile}
fi
if [ -r ${configfile} ];
then
export SLASH=/
x3270 -model 2 127.0.0.1:`cat ${configfile} | grep CNSLPORT | awk '{print $2}'`&
x3270 -model 2 127.0.0.1:`cat ${configfile} | grep CNSLPORT | awk '{print $2}'`&
hercules -f ${configfile} > ${logfile}
ps -ef | grep 3270 | grep -v grep | awk '{system("kill -9 "$2" >/dev/null");}' > /dev/null
fi

# eof

# Source: commandlinefu.com with a quick tweak
$ export j=0; for i in $(objdump -d -M intel myobjfile | grep "^ " | cut -f2); do echo -n '\x'$i; j=$((j+=1)); done; echo -e "\nLength: $j"

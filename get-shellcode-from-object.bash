# Source: commandlinefu.com with a quick tweak
$ for i in $(objdump -d -M intel myobjfile | grep "^ " | cut -f2); do echo -n '\x'$i; done; echo
\x31\xc0\xb0\x01\x31\xdb\xb3\x0a\xcd\x80
$ 

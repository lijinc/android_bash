#!/system/bin/sh
echo 'It will fix md5 mismatch error...'
sleep 1
echo 'Use it at your own risk...'
echo -ne '.....                     (33%)\r'
rm nandroid.md5
md5sum *.[!s][!h]* > temp1
echo -ne '.............             (66%)\r'
md5sum .*.[!s][!h]* > temp2
cat temp1 temp2 > nandroid.md5
sleep 1
echo -ne '..........................(100%)\r'
rm temp1
rm temp2
echo -ne '\n'
echo done..
echo by lj@xda




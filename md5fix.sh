#!/system/bin/sh
echo 'It will fix md5 mismatch error...'
sleep 1
echo 'Use it at your own risk...'
sleep 1
echo 'Choose the backup to fix'
cd sdcard/clockworkmod/backup/
ls -d */ > fl
awk '{printf "%s.\t%s\n",NR,$0}' fl
read ch
cd "`head -$ch fl | tail -1`"
echo 'wait..'
md5sum cache.yaffs2.img > ca
md5sum data.yaffs2.img > da
md5sum sd-ext.*.tar > sd
md5sum system.yaffs2.img > sy
md5sum .android_secure.vfat.tar > sec
cat ca da sd sy sec > nandroid.md5
rm ca
rm da
rm sd
rm sy
rm sec
cd ..
rm fl
echo 'done..'
echo 'by lj@xda'




#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7160bdc97961c5bbaa22220a89242f45527d74f5; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:1bbf240d388071f5fbdc4f2b54f2fe5f4b6289ed EMMC:/dev/block/bootdevice/by-name/recovery 7160bdc97961c5bbaa22220a89242f45527d74f5 67108864 1bbf240d388071f5fbdc4f2b54f2fe5f4b6289ed:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

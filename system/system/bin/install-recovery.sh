#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:471ff0e148dde15a064b4dfa7a0c2b3f450a8915; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:134217728:3a6bc669862009c941a0245c7eaa46d6576fd1cb EMMC:/dev/block/bootdevice/by-name/recovery 471ff0e148dde15a064b4dfa7a0c2b3f450a8915 67108864 3a6bc669862009c941a0245c7eaa46d6576fd1cb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

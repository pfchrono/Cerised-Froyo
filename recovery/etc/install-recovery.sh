#!/system/bin/sh
if ! applypatch -c MTD:recovery:2048:3951dc0af53db8f572652e3800a319d9e0e1b200; then
  log -t recovery "Installing new recovery image"
  applypatch MTD:boot:2361344:9a93ec99924586ab97dcf311f0965c46b022694e MTD:recovery eafef56c1b613c1760719d4201a76f249bbe97db 3459072 9a93ec99924586ab97dcf311f0965c46b022694e:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi

## beaglebone_watchdog - A simple watchdog project for Beaglebone Black running Angstrom

### Install

Use make and opkg install

```
user@beaglebone:~$ cd watchdog
user@beaglebone:~/watchdog$ make
...
user@beaglebone:~/watchdog$ ls /tmp/
watchdog_1.0.0-r0.0_armv7ahf-vfp-neon.ipk
```

```
user@beaglebone:~/watchdog$ su root
...
user@beaglebone:~/watchdog# opkg install /tmp/watchdog_1.0.0-r0.0_armv7ahf-vfp-neon.ipk
...
user@beaglebone:~/watchdog#
```

## Usage

Use systemd features to manage watchdog.timer and watchdog.service

```
user@beaglebone:~$ systemctl status watchdog.timer
user@beaglebone:~$ systemctl status watchdog.service
```


# Домашнее задание, написать свою реализацию ps ax используя анализ /proc

## Введение

Копируем Vagrantfile, psax.sh в директорию на компьютере.

## Запуск тестового окружения

Открываем консоль, перейдим в директорию с проектом и выполнить `vagrant up`
```shell
cd otus-hw9
vagrant up
```

## Подключение к серверу и переходим в директорию со скриптом

Для подключения к серверу необходимо выполнить
```shell
vagrant ssh bash
sudo -i
cd /vagrant
```

## Запускаем скрип logreport.sh

```shell
bash psax.sh
```

# Вывод
<details><summary>Пример вывода</summary>
<p>

```log
[vagrant@bash vagrant]$ bash psax.sh
PID     TTY     STAT            NICE    TIME            COMMAND
1       0       S (sleeping)    0       00:00:11        /usr/lib/systemd/systemd --switched-root --system --deserialize 21
2       0       S (sleeping)    0       00:00:00
4       0       S (sleeping)    -20     00:00:00
5       0       S (sleeping)    0       00:00:00
6       0       S (sleeping)    0       00:00:00
7       0       S (sleeping)    0       00:00:00
8       0       S (sleeping)    0       00:00:00
9       0       R (running)     0       00:00:00
10      0       S (sleeping)    -20     00:00:00
11      0       S (sleeping)    0       00:00:00
13      0       S (sleeping)    0       00:00:00
14      0       S (sleeping)    -20     00:00:00
15      0       S (sleeping)    0       00:00:00
16      0       S (sleeping)    -20     00:00:00
17      0       S (sleeping)    -20     00:00:00
18      0       S (sleeping)    -20     00:00:00
19      0       S (sleeping)    -20     00:00:00
20      0       S (sleeping)    -20     00:00:00
21      0       S (sleeping)    -20     00:00:00
22      0       S (sleeping)    -20     00:00:00
23      0       S (sleeping)    -20     00:00:00
24      0       S (sleeping)    -20     00:00:00
26      0       S (sleeping)    0       00:00:00
33      0       S (sleeping)    0       00:00:00
34      0       S (sleeping)    5       00:00:00
35      0       S (sleeping)    -20     00:00:00
43      0       S (sleeping)    -20     00:00:00
44      0       S (sleeping)    -20     00:00:00
45      0       S (sleeping)    -20     00:00:00
46      0       S (sleeping)    -20     00:00:00
48      0       S (sleeping)    -20     00:00:00
61      0       S (sleeping)    -20     00:00:00
95      0       S (sleeping)    0       00:00:00
124     0       S (sleeping)    -20     00:00:00
127     0       S (sleeping)    0       00:00:00
129     0       S (sleeping)    -20     00:00:00
132     0       S (sleeping)    0       00:00:00
133     0       S (sleeping)    -20     00:00:00
154     0       S (sleeping)    -20     00:00:00
155     0       S (sleeping)    -20     00:00:00
156     0       S (sleeping)    -20     00:00:00
157     0       S (sleeping)    -20     00:00:00
158     0       S (sleeping)    -20     00:00:00
159     0       S (sleeping)    -20     00:00:00
160     0       S (sleeping)    -20     00:00:00
161     0       S (sleeping)    -20     00:00:00
162     0       S (sleeping)    -20     00:00:00
163     0       S (sleeping)    -20     00:00:00
164     0       S (sleeping)    0       00:00:00
165     0       S (sleeping)    -20     00:00:00
227     0       S (sleeping)    0       00:00:00        /usr/lib/systemd/systemd-journald
260     0       S (sleeping)    0       00:00:02        /usr/lib/systemd/systemd-udevd
280     0       S (sleeping)    -4      00:00:00        /sbin/auditd
286     0       S (sleeping)    -20     00:00:00
287     0       S (sleeping)    -20     00:00:00
328     0       S (sleeping)    0       00:00:00        /usr/lib/polkit-1/polkitd --no-debug
332     0       S (sleeping)    0       00:00:00        /usr/lib/systemd/systemd-logind
335     0       S (sleeping)    0       00:00:00        /usr/bin/dbus-daemon --system --address=systemd: --nofork --nopidfile --systemd-activation
346     0       S (sleeping)    0       00:00:00        /usr/sbin/chronyd
349     0       S (sleeping)    0       00:00:00        /sbin/rpcbind -w
351     0       S (sleeping)    0       00:00:00        /usr/sbin/gssproxy -D
385     0       S (sleeping)    0       00:00:00        /usr/sbin/crond -n
386     1025    S (sleeping)    0       00:00:00        /sbin/agetty --noclear tty1 linux
575     0       S (sleeping)    0       00:00:00        /usr/bin/python2 -Es /usr/sbin/tuned -l -P
577     0       S (sleeping)    0       00:00:13        /usr/sbin/sshd -D -u0
578     0       S (sleeping)    0       00:00:00        /usr/sbin/rsyslogd -n
807     0       S (sleeping)    0       00:00:00        /usr/libexec/postfix/master -w
811     0       S (sleeping)    0       00:00:00        qmgr -l -t unix -u
2306    0       S (sleeping)    0       00:00:00        /usr/sbin/NetworkManager --no-daemon
2325    0       S (sleeping)    0       00:00:00        /sbin/dhclient -d -q -sf /usr/libexec/nm-dhcp-helper -pf /var/run/dhclient-eth0.pid -lf /var/lib/NetworkManager/dhclient-5fb06bd0-0bb0-7ffb-45f1-d6edd65f3e03-eth0.lease -cf /var/lib/NetworkManager/dhclient-eth0.conf eth0
3245    0       S (sleeping)    0       00:00:00        sshd: vagrant [priv]
3248    0       S (sleeping)    0       00:00:00        sshd: vagrant@pts/0
3249    34816   S (sleeping)    0       00:00:02        -bash
5407    0       S (sleeping)    0       00:00:00
8397    0       S (sleeping)    0       00:00:00
9966    34816   S (sleeping)    0       00:00:00        bash psax.sh
25491   0       S (sleeping)    0       00:00:00
25492   0       S (sleeping)    0       00:00:00        pickup -l -t unix -u
uptime: 0:02:08:27
```
</p>
</details>

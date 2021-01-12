# Загрузка системы

## Введение

Копируем Vagrantfile, access.log, logreport.sh в директорию на компьютере.

## Запуск тестового окружения

Открываем консоль, перейдим в директорию с проектом и выполнить `vagrant up`
```shell
cd otus-hw8
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
./logreport.sh
```

## Запуск созданного отчета

```shell
cat report.log
```

# Вывод
<details><summary>Пример вывода</summary>
<p>

```log
[root@bash vagrant]# cat report.log
Дата отчета с 14/Aug/2019:04:12:10 по 15/Aug/2019:00:25:46

5 IP адресов с наибольшим количеством запросов:
45 запросов с IP адреса: 93.158.167.130
39 запросов с IP адреса: 109.236.252.130
37 запросов с IP адреса: 212.57.117.19
33 запросов с IP адреса: 188.43.241.106
31 запросов с IP адреса: 87.250.233.68
24 запросов с IP адреса: 62.75.198.172
22 запросов с IP адреса: 148.251.223.21
20 запросов с IP адреса: 185.6.8.9
17 запросов с IP адреса: 217.118.66.161
16 запросов с IP адреса: 95.165.18.146
12 запросов с IP адреса: 95.108.181.93
12 запросов с IP адреса: 62.210.252.196
12 запросов с IP адреса: 185.142.236.35
12 запросов с IP адреса: 162.243.13.195
8 запросов с IP адреса: 163.179.32.118

15 URL с наибольшим количеством запросов:
157 запросов на: /
120 запросов на: /wp-login.php
57 запросов на: /xmlrpc.php
26 запросов на: /robots.txt
12 запросов на: /favicon.ico
11 запросов на: 400
9 запросов на: /wp-includes/js/wp-embed.min.js?ver=5.0.4
7 запросов на: /wp-admin/admin-post.php?page=301bulkoptions
7 запросов на: /1
6 запросов на: /wp-content/uploads/2016/10/robo5.jpg
6 запросов на: /wp-content/uploads/2016/10/robo4.jpg
6 запросов на: /wp-content/uploads/2016/10/robo3.jpg
6 запросов на: /wp-content/uploads/2016/10/robo2.jpg
6 запросов на: /wp-content/uploads/2016/10/robo1.jpg
6 запросов на: /wp-content/uploads/2016/10/aoc-1.jpg

Все ошибки:
51 кодов ошибки: 404
7 кодов ошибки: 400
3 кодов ошибки: 500
2 кодов ошибки: 499

Список всех кодов возврата:
498 кодов возврата: 200
95 кодов возврата: 301
51 кодов возврата: 404
11 кодов возврата: "-"
7 кодов возврата: 400
3 кодов возврата: 500
2 кодов возврата: 499
```
</p>
</details>

## Проверка того, что отчет делается с даты последнего запуска скрипта

# Если скрип запускался ранее, необходимо удалить endtime.log

```shell
rm /vagrant/endtime.log
```

# Разделим access.log на два файла с разной датой

```shell
sed -e '1,659 d' access.log >> access2.log
sed -i '660,700 d' access.log 
```
# Запускаем скрип logreport.sh

```shell
./logreport.sh
```
# Вывод отчета с 14/Aug/2019:04:12:10 по 14/Aug/2019:23:50:27

```shell
cat report.log
```

<details><summary>Пример вывода</summary>
<p>

```log
Дата отчета с 14/Aug/2019:04:12:10 по 14/Aug/2019:23:50:27

5 IP адресов с наибольшим количеством запросов:
45 запросов с IP адреса: 93.158.167.130
39 запросов с IP адреса: 109.236.252.130
37 запросов с IP адреса: 212.57.117.19
33 запросов с IP адреса: 188.43.241.106
30 запросов с IP адреса: 87.250.233.68
23 запросов с IP адреса: 62.75.198.172
22 запросов с IP адреса: 148.251.223.21
20 запросов с IP адреса: 185.6.8.9
17 запросов с IP адреса: 217.118.66.161
16 запросов с IP адреса: 95.165.18.146
12 запросов с IP адреса: 95.108.181.93
12 запросов с IP адреса: 62.210.252.196
12 запросов с IP адреса: 185.142.236.35
12 запросов с IP адреса: 162.243.13.195
8 запросов с IP адреса: 163.179.32.118

15 URL с наибольшим количеством запросов:
153 запросов на: /
118 запросов на: /wp-login.php
56 запросов на: /xmlrpc.php
25 запросов на: /robots.txt
12 запросов на: /favicon.ico
11 запросов на: 400
9 запросов на: /wp-includes/js/wp-embed.min.js?ver=5.0.4
7 запросов на: /wp-admin/admin-post.php?page=301bulkoptions
7 запросов на: /1
6 запросов на: /wp-content/uploads/2016/10/robo5.jpg
6 запросов на: /wp-content/uploads/2016/10/robo4.jpg
6 запросов на: /wp-content/uploads/2016/10/robo3.jpg
6 запросов на: /wp-content/uploads/2016/10/robo2.jpg
6 запросов на: /wp-content/uploads/2016/10/robo1.jpg
6 запросов на: /wp-content/uploads/2016/10/aoc-1.jpg

Все ошибки:
49 кодов ошибки: 404
7 кодов ошибки: 400
3 кодов ошибки: 500
2 кодов ошибки: 499

Список всех кодов возврата:
490 кодов возврата: 200
95 кодов возврата: 301
49 кодов возврата: 404
11 кодов возврата: "-"
7 кодов возврата: 400
3 кодов возврата: 500
2 кодов возврата: 499
```
</p>
</details>

# Добавим в access.log информацию из access2.log 

```shell
cat access2.log >> access.log
```

# Выполним скрипт

```shell
./logreport.sh
```

# Вывод отчета  с последней даты запуска скрипта 14/Aug/2019:23:50:27 по 15/Aug/2019:00:25:46

```shell
cat report.log
```

<details><summary>Пример вывода</summary>
<p>

```log
Дата отчета с 14/Aug/2019:23:50:27 по 15/Aug/2019:00:25:46

5 IP адресов с наибольшим количеством запросов:
3 запросов с IP адреса: 137.74.1.112
2 запросов с IP адреса: 182.254.243.249

15 URL с наибольшим количеством запросов:
4 запросов на: /
2 запросов на: /xmlrpc.php
2 запросов на: /wp-login.php

Все ошибки:
2 кодов ошибки: 404

Список всех кодов возврата:
9 кодов возврата: 200
2 кодов возврата: 404
```
</p>
</details>
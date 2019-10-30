https://github.com/cakephp/cakephp/releases

виртуальный хост ссыдается на папку webroot
сам cake лежит в доме, сделал ссылку
сеачала на
cake
потом на
webroot

пока разнмцы не заметил...
!!!
php-intl
права на
logs tmp
группу сделал www-data
потом пользпвался bake и были сохданы подкаталоги
веб стал ругаться - мол прав на записи кеша не хватает
удалил внутренности logs tmp и установил флаг guid
= ругань прошла

пробуем...
https://book.cakephp.org/3.0/ru/quickstart.html
часть 2...
======================================
dns
не видит адрес cake 
ping видит
dig не видит
nsswitch смотрел
resolvconf смотрел
вышел на NetworkMa...
он использует dnsmasq
ss показал 127.0.1.1
ps awx | grep "1\.1"
24610 ?        S      0:00 /usr/sbin/dnsmasq --no-resolv --keep-in-foreground --no-hosts --bind-interfaces --pid-file=/var/run/NetworkManager/dnsmasq.pid --listen-address=127.0.1.1 --cache-size=0 --conf-file=/dev/null --proxy-dnssec --enable-dbus=org.freedesktop.NetworkManager.dnsmasq --conf-dir=/etc/NetworkManager/dnsmasq.d
т.е. hosts не используется!!!
делаем как здесь
https://hugoheden.wordpress.com/2009/02/24/dnsmasq-and-etchosts/
т.е. в директорию для доп конфигов кладем свой в котором одна строка
addn-hosts=/etc/hosts.dnsmasq
и делаем ссылку на hosts
dig увидел cake и проч.
апач нет!?...



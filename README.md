# Перезапуск сетевого интерфейса при недоступности хоста

Мой Raspberry Pi подключен к локальной сети по WiFi с помощью USB WiFi адаптера «ASUS USB-N10» и при сбоях в сети (например когда рутер зависает или перезагружается) RPi не переподключается к WiFi сети. Чтобы исправить эту ситуацию Я написал маленький сценарий на «Shell» проверяющий доступность сети пингуя рутер и перезапускающий интерфейс «wlan0».
После записи в «cron» сценарий будет проверять сеть каждую минуту.

В коде нужно исправить переменные HOST и DEVICE на необходимые.

Дадим права на исполнение:
```
chmod +x ifdown_net.sh
```

И сделаем запись в «cron» для автоматического запуска скрипта каждую минуту:
```
sudo nano /etc/crontab
```
```
# Test interface and reload if need
*/1  *    * * *   root    /home/user/ifdown_net.sh
```

Если хочется запускать не каждую минуту, а например каждые 5 минут, тогда нужно исправить «1» на «5».

## License

This script is licensed under the [GNU General Public License, version 3 (GPLv3)](http://www.gnu.org/licenses/gpl-3.0.html) and is distributed free of charge.

Commercial licensing (e.g. for projects that can’t use an open-source license) is available upon request.


## Author

Arthur Garegnyan

* Email: arthurgareginyan@gmail.com

* GitHub: [https://github.com/ArthurGareginyan/](https://github.com/ArthurGareginyan/)

* Website: [http://www.arthurgareginyan.com](http://www.arthurgareginyan.com)

* Donation: [http://www.arthurgareginyan.com/donate.html](http://www.arthurgareginyan.com/donate.html)

# Papież mówi
Papież mówi to polski odpowiednik unixowej komendy [cowsay]. Po wpisaniu komendy wyświetla Jana Pawła II z komiksowym dymkiem i własnym lub losowym cytatem.

### Instalacja
Należy wkleić do terminala odpowiednią komendę:
- Poprzez curl (OS X, Linux):
```sh
$ curl -s https://raw.githubusercontent.com/yungtry/papiezmowi/master/install.sh | bash
```
  - Lub poprzez wget (Linux):
```sh
$ wget -O  - https://raw.githubusercontent.com/yungtry/papiezmowi/master/install.sh | bash
```
### Użycie
Komendy używamy w następujący sposob:
```sh
$ papiezmowi
```
Co zwróci nam Jana Pawła II z losowym cytatem:
```sh
█████████████
█ jeszcze jak
█████████████
░░███░░░░░░░░░░░░░░░░
░░░███░░░░░░░▄▄▀▀▀▀▀▀▄▄
░░░░███░░░▄▄▀▄▄▄█████▄▄▀▄
░░░░░██▄█▀▒▀▀▀█████████▄█▄
░░░░░░▄██▒▒▒▒▒▒▒▒▀▒▀▒▀▄▒▀▒▀▄
░░░░▄██▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄
░░░░██▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▌
░░░▐██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐█
░▄▄███▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█
▐▒▄▀██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐▌
▌▒▒▌▒▀▒▒▒▒▒▒▄▀▀▄▄▒▒▒▒▒▒▒▒▒▒▒▒█▌
▐▒▀▒▌▒▒▒▒▒▒▒▄▄▄▄▒▒▒▒▒▒▒▀▀▀▀▄▒▐
░█▒▒▌▒▒▒▒▒▒▒▒▀▀▒▀▒▒▐▒▄▀██▀▒▒▒▌
░░█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐▒▒▒▒▒▒▒▒█
░░░▀▌▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌▒▒▒▒▒▒▄▀
░░░▐▒▒▒▒▒▒▒▒▒▄▀▐▒▒▒▒▒▐▒▒▒▒▄▀
░░▄▌▒▒▒▒▒▒▒▄▀▒▒▒▀▄▄▒▒▒▌▒▒▒▐▀▀▀▄▄▄
▄▀░▀▄▒▒▒▒▒▒▒▒▀▀▄▄▄▒▄▄▀▌▒▒▒▌░░░░░░
▐▌░░░▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄▀░░░░░░░
░█░░░░░▀▄▄▒▒▒▒▒▒▒▒▒▒▒▒▄▀░█░░░░░░░
░░█░░░░░░░▀▄▄▄▒▒▒▒▒▒▄▀░░░░█░░░░░░
```
Można również utworzyć Jana Pawła II z własnym cytatem:
```sh
$ papiezmowi Dobry wieczór coś się popsuło i nie było mnie słychać.
```
Co zwróci nam:
```sh
███████████████████████████████████████████████████████████████
█ Dobry wieczór coś się popsuło i nie było mnie słychać.
███████████████████████████████████████████████████████████████
░░███░░░░░░░░░░░░░░░░
░░░███░░░░░░░▄▄▀▀▀▀▀▀▄▄
░░░░███░░░▄▄▀▄▄▄█████▄▄▀▄
░░░░░██▄█▀▒▀▀▀█████████▄█▄
░░░░░░▄██▒▒▒▒▒▒▒▒▀▒▀▒▀▄▒▀▒▀▄
░░░░▄██▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄
░░░░██▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▌
░░░▐██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐█
░▄▄███▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█
▐▒▄▀██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐▌
▌▒▒▌▒▀▒▒▒▒▒▒▄▀▀▄▄▒▒▒▒▒▒▒▒▒▒▒▒█▌
▐▒▀▒▌▒▒▒▒▒▒▒▄▄▄▄▒▒▒▒▒▒▒▀▀▀▀▄▒▐
░█▒▒▌▒▒▒▒▒▒▒▒▀▀▒▀▒▒▐▒▄▀██▀▒▒▒▌
░░█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐▒▒▒▒▒▒▒▒█
░░░▀▌▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▌▒▒▒▒▒▒▄▀
░░░▐▒▒▒▒▒▒▒▒▒▄▀▐▒▒▒▒▒▐▒▒▒▒▄▀
░░▄▌▒▒▒▒▒▒▒▄▀▒▒▒▀▄▄▒▒▒▌▒▒▒▐▀▀▀▄▄▄
▄▀░▀▄▒▒▒▒▒▒▒▒▀▀▄▄▄▒▄▄▀▌▒▒▒▌░░░░░░
▐▌░░░▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▄▀░░░░░░░
░█░░░░░▀▄▄▒▒▒▒▒▒▒▒▒▒▒▒▄▀░█░░░░░░░
░░█░░░░░░░▀▄▄▄▒▒▒▒▒▒▄▀░░░░█░░░░░░
```
###Odinstalowywanie:
```sh
$ bash papiez-papa
```

### Wersja
2.1.3.7

### Kompatybilność
Testowane z Arch Linux, OS X 10.11.4 El Capitan

[cowsay]: <https://pl.wikipedia.org/wiki/Cowsay>

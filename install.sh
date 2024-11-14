#!/bin/sh

cd /tmp || exit 1

download() {
    if type curl >/dev/null 2>&1; then
        curl -s "$1" > "$2"
    elif type wget >/dev/null 2>&1; then
        wget -q "$1" -O "$2"
    else
        printf "Błąd: Wymagany jest curl lub wget.\n"
        exit 1
    fi
}

download "https://raw.githubusercontent.com/yungtry/papiezmowi/master/papiezmowi" "papiezmowi"
chmod +x papiezmowi
printf '\n\nPotrzebuje uprawnien zeby móc zainstalować papiezmowi\n'

elevate() {
    if test "$(id -u)" = "0"; then
        "$@"
    else
        if type sudo >/dev/null 2>&1; then
            sudo "$@"
        else
            if type doas >/dev/null 2>&1; then
                doas "$@"
            else
                printf "Błąd: Skrypt musi zostać uruchomiony jako administrator.\n"
                exit 1
            fi
        fi
    fi
}

elevate rm -f /usr/local/bin/papiezmowi
elevate rm -f /usr/local/bin/papiez-papa
elevate mv papiezmowi /usr/local/bin

download "https://raw.githubusercontent.com/yungtry/papiezmowi/master/papiez-papa" "papiez-papa"
chmod +x papiez-papa
elevate mv papiez-papa /usr/local/bin

printf '%s\n' '
░░░░░░░░░░░░░▄▄▀▀▀▀▀▀▄▄
░░░░░░░░░░▄▄▀▄▄▄█████▄▄▀▄
░░░░░░░░▄█▀▒▀▀▀█████████▄█▄
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
'

printf 'Pomyślnie zainstalowano papiezmowi.\nUżycie komendy znajdziesz na https://github.com/yungtry/papiezmowi.\nAby odinstalować skrypt wpisz w terminalu: papiez-papa\n'

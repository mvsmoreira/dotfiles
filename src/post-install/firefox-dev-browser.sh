#!/bin/bash

cd ~
cd /opt
curl --location "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" | tar --extract --verbose --preserve-permissions --bzip2

sudo chown -R $USER /opt/firefox

echo "export PATH=/opt/firefox/firefox:$PATH" >> ~/.bashrc

cat > ~/.local/share/applications/FirefoxDeveloperEdition.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Firefox Developer Edition
StartupWMClass=firefox-aurora
GenericName=Firefox Developer Edition
Exec=/opt/firefox/firefox
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Terminal=false
Type=Application
Categories=Application;Network;X-Developer;
Comment=Firefox Developer Edition Web Browser
StartupNotify=true
Keywords=web;browser;internet;
Actions=new-window;new-private-window;
MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;
X-Ayatana-Desktop-Shortcuts=NewWindow;NewIncognito

[Desktop Action new-window]
Name=Abrir em uma nova janela
Exec=/opt/firefox/firefox %u

[Desktop Action new-private-window]
Name=Abrir em uma janela privada
Exec=/opt/firefox/firefox --private-window %u
EOL

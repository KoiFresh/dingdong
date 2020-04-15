# dingdong

Diese Version ist die erste Testversion für die dingdong anwendung - 2020-04-11


# Richtiges Reihenfolge zum Installieren der Kompletten Anwendung
### Enthalten sind:
#####  - GUI Interface
#####  - Telefon Server 
#####  - key_server
#####  - key_logger

### Instalaltion der Anwendung
###### Empfohlenes Betriebssystem : Ubuntu Mate mit 7 Zoll Display Hochkannt 600x1024 pixel

sudo apt-get install git

git clone https://github.com/KoiFresh/dingdong.git

bash dingdong/install.sh

###### unter umständen kann die eingabe des Kontinents so wie die Zeitzone gefordert werdem

### Fertig! Die Klingel kann nun Verwendet werden


#### Beschreibung der .sh Dateien

##### bash install.sh 
- Installiert alle benötigten Abzhängigkeiten und führt am ende die Datei update.sh aus.

##### bash update.sh
- bereitet den Automatischen start des GUI vor 
- startet die Klingel neu.

##### bash start.sh
- startet das GUI und Initialisiert die Kamera 




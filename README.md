# dingdong

Diese Version ist die erste Testversion für die dingdong anwendung - 2020-04-11

# Reihenfolge der Dateine:

# bash start.sh
-> startet das GUI bei korrektrer einrichtung durch update.sh 
-> kann alleine ausgeführt werden nach korreter einstelllung durch update.sh 

bash update.sh
-> stellt das Frontend der klingel bereit beu GUI update diese.
-> nimmt einstelllungen für start.sh for 
-> Die Klingel starte neu

# bash install.sh 
-> Installiert alle benötigten anteile führt automatisch update.sh aus


# Richtiges Reihenfolge zum Installieren der anwendung

sudo apt-get install git
git clone https://github.com/KoiFresh/dingdong.git

bash dingdong/install.sh

!! eventuell geforderte informationen angeben.
!! auf den neustart warten

Fertig ! Die Klingel kann nun verwendet werden


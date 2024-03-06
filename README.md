# Felhőszolgáltatások Házi 1
---
### Feladat
- Két konténer létrehozása, amelyek egy hálózaton vannak, egy build szkript által építődnek, indulnak el. 
- Az egyik konténer egy egyszerű weblapot szolgál ki, a másik konténer pedig DNS feloldással kéri ezt le.
- A konténerek képfájljait DockerHubra fel kell rakni.

---
### Megvalósítás

Két különböző Dockerfile nginx és alpine-nak, majd a build szkript építi és indítja ezeket.

Az alpine konténer csomagkezelőjével a curl parancsot hozzáadtam.

Az nginx-en a default weblapot futtatom, viszont a /usr/share/nginx/ mappában található, ezt kell hozzá cserélni.

Ahhoz, hogy a konténerek DNS feloldással is tudjanak kommunikálni létrehoztam nekik egy külön hálózatot a docker network create paranccsal a build szkriptemben.

A konténerek megtalálhatóak a DockerHub repositorymban, [itt](https://hub.docker.com/repositories/mucsbal).
# traces-api
Aplicació API REST del projecte Traces
API amb operacions CRUD a la base de dades PostgreSQL

*Traces. Seguiment de curses d’esquí de muntanya en línia.*

Màster Universitari en Enginyeria Informàtica
TFM - Àrea  de Serveis basats en localització i espais intel·ligents
Universitat Oberta de Catalunya

**Autor:** Jaume Casanovas Coma

**Directora del TFM**: Anna Muñoz Bollas

**Professor responsable de l’assignatura**: Antoni Pérez Navarro


Gener de 2022

**Condicions prèvies**

Abans d'executar el codi de Traces Api, cal seguir els passos d'instal·lació de la base de dades PostgreSQL i creació de les taules indicats als annexos 5 i 6 de  la memòria del projecte fent ús dels scripts de la carpeta /sql

**Execució**

Exuctar amb:  node src/index.js o npm start

**Accedir a localhost:3001**

http://localhost:3001/users/

http://localhost:3001/users/[id usuari]

http://localhost:3001/users/1

...

http://localhost:3001/tracks/

http://localhost:3001/tracks/[id track]

http://localhost:3001/tracks/1

...


**Matar processos oberts**
lsof -i tcp:3001
kill -9 <PID>


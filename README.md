# traces-api

API amb operacions CRUD a la base de dades PostgreSQL

Exuctar amb:
node src/index.js

o 

npm start

Accedir a localhost:3001
http://localhost:3001/users/
http://localhost:3001/users/[id usuari]
http://localhost:3001/users/1
...

http://localhost:3001/tracks/
http://localhost:3001/tracks/[id track]
http://localhost:3001/tracks/1
...


Matar processos oberts
lsof -i tcp:3001
kill -9 <PID>

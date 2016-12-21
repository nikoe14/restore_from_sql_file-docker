## Restore sql file to MariaDB
.
```sh
$ docker run -v /you/sql/directory:/home/db -e DB_HOST={MARIADB-SERVER-IP} -e DB_USER={MARIA-DB-USER} -e DB_PASS={MARIA-DB-PASS} -e DB_NAME={DBNAME} restore
```
{DBNAME} will be created, and de sql file will be restore in this db..

### EXAMPLE
```sh
docker run -v /home/db:/home/db -e DB_HOST=172.17.0.3 -e DB_USER=root -e DB_PASS=root -e DB_NAME=mydb restore
```

The entrypoint file will find any with sql extension file and restore that file in {DBNAME} there.

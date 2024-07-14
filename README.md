# dockerize_application
This is a simple project for dockerize an application

### PROJECT 1 - Wordpress Application

```
Add .env file and add some env variables for configuring docker compose file.

ROOT_PASSWORD=<Your-Preferred-Root-Password>
DB_PORT=<Preferred-Port-to-connect>

WP_USER=<Preferred-Username-for-Wordpress-Application>
WP_PASS=<Preferred-Password-for-Wordpress-Application>
WP_DB=<Preferred-DatabaseName-for-Wordpress-Application>
```

### Project Compilation
 - Run below Command to build and deploy the containers 
```bash
docker compose up -d
```
 - Output of <b>docker compose up -d</b>
```bash
[+] Running 39/3
 ✔ mariadb 8 layers [⣿⣿⣿⣿⣿⣿⣿⣿]      0B/0B      Pulled                                                                                                                      85.4s 
 ✔ adminer 7 layers [⣿⣿⣿⣿⣿⣿⣿]      0B/0B      Pulled                                                                                                                       45.2s 
 ✔ wordpress 21 layers [⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]      0B/0B  Pulled                                                                                                      103.3s 
[+] Running 3/6
 - Network kinnarchowdhury-wp-app_default        Created                                                                                                                   12.2s 
 - Volume "kinnarchowdhury-wp-app_wordpress"     Created                                                                                                                   12.1s 
 - Volume "kinnarchowdhury-wp-app_db_data"       Created                                                                                                                   12.1s 
 ✔ Container kinnarchowdhury-wp-app-mariadb-1    Healthy                                                                                                                   11.4s 
 ✔ Container kinnarchowdhury-wp-app-wordpress-1  Started                                                                                                                   11.8s 
 ✔ Container kinnarchowdhury-wp-app-adminer-1    Started                                                                                                                   11.8s 
```
 - You Can check the database user accessability using adminer running at <b>http://localhost:8080/</b>
 - Verify your wordpress installation at <b>http://localhost:8001/</b>

##### References
 - https://hub.docker.com/_/mariadb
 - https://mariadb.com/kb/en/mariadb-server-docker-official-image-environment-variables/#mariadb_mysql_localhost_user-mariadb_mysql_localhost_grants
 - https://hub.docker.com/_/wordpress
 - https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose

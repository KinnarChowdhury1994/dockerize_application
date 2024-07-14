# dockerize_application
 - :open_book: This is a project for dockerize an local wordpress application and run over container with persisted data.


### PROJECT 1 - Wordpress Application

 - Download the wordpress from <b>https://wordpress.org/download/</b>
 - Unzip The wordpress-6.5.5.zip and look into the directory.
 - Copy the wordpress directory from wordpress-6.5.5 and paste it inside wordpress_app where your docker compose file is located. Later this mountpoint will be used for <b>/var/www/html</b>
 - Create a sample txt file to validate whether the localsite is getting deployed inside container path /var/www/html/
 - Create a directory say "mariadb_data" inside wordpress_app. Later it will be used in docker compose file to mount the <b>/var/lib/mysql</b>
 - Add .env file and add some env variables for configuring docker compose file.
```bash
ROOT_PASSWORD=<Your-Preferred-Root-Password>
DB_PORT=<Preferred-Port-to-connect>

WP_USER=<Preferred-Username-for-Wordpress-Application>
WP_PASS=<Preferred-Password-for-Wordpress-Application>
WP_DB=<Preferred-DatabaseName-for-Wordpress-Application>
```
 - Create an .dockerignore file and paste the below lines inside it.
```bash
.env
.git
docker-compose.yml
.dockerignore
```

### Project Compilation
 - Run below Command to build and deploy the containers 
```bash
docker compose up -d
```

 - Output of <b>docker compose up -d</b>
```bash
[+] Running 3/3
 ✔ Container kinnarchowdhury-wp-local-mariadb-local-1    Healthy                                                                                                            0.0s 
 ✔ Container kinnarchowdhury-wp-local-wordpress-local-1  Started                                                                                                            0.0s 
 ✔ Container kinnarchowdhury-wp-local-adminer-local-1    Started                                                                                                            0.0s                                                                                                                 11.8s 
```
 - You Can check the database user accessability using adminer running at <b>http://localhost:8088/</b>
 - Verify your wordpress installation at <b>http://localhost:8087/</b>

##### References
 - https://hub.docker.com/_/mariadb
 - https://mariadb.com/kb/en/mariadb-server-docker-official-image-environment-variables/#mariadb_mysql_localhost_user-mariadb_mysql_localhost_grants
 - https://hub.docker.com/_/wordpress
 - https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose

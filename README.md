The php api  example app 

This application is for educational purposes.
Application is builded by using docker, app includes the following images mysql, php-fpm and nginx. 
App includes examples of linked services, environment variables optimize dependency installation on image building. 
This php api application returns user data (username) from mysql database through api GET request and allow to add a new entry in database.

Example APP

The example php api app includes dummy code.

Running the application

  Clone the repo and install the dependencies.
     
     git clone https://github.com/armc23/docker-lamp.git

  This project already has a prepared enviroment for that, you have to run:
  Change variable.env.example to variable.env and fill your credentials.
  Move to project directory and run the following command
          
          cd docker-lamp 
          cp variable.env.example variable.env
  Fill env variable with yours credentials.
          vim variable.env

              MYSQL_ROOT_PASSWORD=""
              DB_USERNAME=""
              DB_PASSWORD=""
              DB_DATABASE_NAME=""

  Run the application.     
         
          docker-compose up -d

  In order to test api GET request to php applications use the following command.
    
        curl http:://[your_host_ip]:8080/users/get.php
       
        or
        
        curl http://localhost:8080/users/get.php
  
  In order to add a new entry into database use the folowing command.
  
        curl -H "Content-Type: application/json" -X POST -d '{"name":"mkyong"}' http://[your_host_ip]:8080/users/add.php

        or

        curl -H "Content-Type: application/json" -X POST -d '{"name":"mkyong"}' http://localhost:8080/users/add.php
    
  In order to check a new user entry in database you can user GET request command.
        
        curl http:://[your_host_ip]:8080/users/get.php
       
        or
        
        curl http://localhost:8080/users/get.php

       


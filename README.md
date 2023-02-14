The php api  example app 

This  application uses docker, app includes the following images mysql, php-fpm and nginx. 
App includes examples of linked services, environment variables optimize dependency installation on image building. 
This php api application returns user data from mysql database through api GET request and allow to add a new entry in database.

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

  In order to test api calls to php applications use the following.
    
        http:://[your_host_ip]/get.php/user

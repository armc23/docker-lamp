The php api  example app 

This  application uses docker and uses the following images mysql, php-fpm and nginx. It includes examples of linked services, environment variables ​​optimize dependency installation on image building. This php api application returns user data from mysql database through api GET  request.

Example APP

The example php api app includes dummy code.

Running the application

  Clone the repo and install the dependencies.
    https://github.com/armc23/docker-lamp.git

  This project already has a prepared enviroment for that, you have to run:
  Change variable.env.example to variable.env and fill your credentials.
  Move to project directory and run the following command
             
          docker-compose up -d

  In order to test api calls to php applications use the following.
    http:://[your_host_ip]/index.php/user/list

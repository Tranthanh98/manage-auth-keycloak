The portal app will handle authentication and authorization request.

How to run on dev environment

 A. Setup development env

  1. Install openjdk 11
  
  2. Install Apache Maven 3.8.1
  
  3. Install docker (optional) if you want to run with docker.
  
  
  4. Install mssql and create database ds_portal
  
     4.1 If you want to run mssql on docker (Macbook M1) then run cd docker-compose/sql-server-edge && docker-compose -f  up
    
     4.2 If you want to run mssql on docker (window ) then  run cd docker-compose/sql-server && docker-compose -f ./sql-server.yml up

     4.3 import  the database from db/ds_portal.bacpac
  
  5. Add this line to the etc/hosts
     127.0.0.1 portal.ds

  6. Config your local database
 

B. Run

  1. on window
     
     
     bin/standalone.bat

 
  2. on Mac or Linux
   
   bin/standalone.sh
     

Test environment
  
   1. Url =  http://ec2-3-1-222-58.ap-southeast-1.compute.amazonaws.com/

# Vport

This application is mainly an on-line tennis training management system to provide a platform to the tennis training center, the instructors and the players. Its main function is to assist the instructors to design a scientific, reasonable and traceable training plan for the players and to evaluate the performance of the players periodically.
Furthermore, the players can use the system to join into the tennis courses they are interested in and learn their performance during the period of training by using the feedback interface. Lastly, the training center can also extract the new users to join into the tennis classes it holds.

## Installation and Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

1. Tomcat

   The instruction document can be found in [here](https://tomcat.apache.org/download-70.cgi).

2. [Nginx](https://www.nginx.com/)

3. [Eclipse](https://www.eclipse.org/) or [IntelliJ IDEA](https://www.jetbrains.com/idea/)

### Installing

1. Bind `www.vport.com` and `image.vport.com` to `localhost`

2. Configure Nginx(version 1.12.2)
   - Listen to port number 80 and handle the requests from domain name `www.vport.com` to Apache server `http://127.0.0.1:8081`
   - In order to manage the static resource like image, it needs to handle the requests from `image.vport.com` to your local disk path like `E:\\comp9323_pro\\file-upload`

```

#user  nobody;
worker_processes  1;

#error_log  logs/error.log;
#error_log  logs/error.log  notice;
#error_log  logs/error.log  info;
#pid        logs/nginx.pid;

events {
    worker_connections  1024;
}

http {
    include       mime.types;
    default_type  application/octet-stream;
    
    sendfile        on;

    keepalive_timeout  65;

    server {
        listen       80;
        server_name  www.vport.com;

		proxy_set_header X-Forwarded-Host $host;
        proxy_set_header X-Forwarded-Server $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

        location / {
			rewrite ^/rest/(.*)$/$1 break;
            proxy_pass http://127.0.0.1:8081;
			proxy_connect_timeout 600;
			proxy_read_timeout 600;
			#add_header 'Access-Control-Allow-Origin' '*';
			#add_header From www.vport.com;
        }        
    }
    server {
        listen       80;
        server_name  image.vport.com;
		proxy_set_header X-Forwarded-Host $host;
        proxy_set_header X-Forwarded-Server $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;

        location / {
	    root  E:\\comp9323_pro\\file-upload;
        }
    }
}

```

## How to run the project

1. **war file**

   Directly put the war file to the directory of tomcat/webapps, configure the Nginx and start the tomcat server.

2. **Zip archive**

   First unzip the file and configure the Nginx, then put the workspace into Eclipse or IntelliJ IDEA and run the project.

   - **Step 1 configure Maven project**

     ```
     Take eclipse as an example. When the decompression is complete, first open apche-main-3.5.2, then open the conf file below the folder and open settings.xml, then change <localRepository>E:\COMP9323_SUB\repository</localRepository>  to the repository path(absolute path). Then open eclipse, modify the workspace code to utf-8 and the jsp code to utf-8, then click Import button, select the existing maven project under maven, and then import vport-parent. Continue to click import button to import system-vport.
     ```

   - **Step 2 Import the SQL script to the database**

     ```
     Configure the tomcat plugin, click run configuration, import the system-vport project and write Goals as tomcat7:run, then import vport.sql to Mysql, then modify your username and password in jdbc.properties.
     ```

   - **Step 3 Modify buffer path**

     ```
     Modify path to your cache path in ehcache.xml in jdbc.properties.
     ```

   - **Step 4 Modify the file upload path**

     ```
     Find the common controller under the controller package, and open the CheckTheFile method to modify the file upload path. 
     Open CourseController, find the method check the file, and modify the upload path. Find the CustomExceptionResovler under the exception package, modify the exception information log path.
     ```

   - **Step 5 Run the project**

     ```
     Start the Nginx and Tomcat server and the project will run in your machine.
     ```


## Brief introduction of project

In this project, we use `Maven` to manage related jar files.

First we create a `pom project` to be the version management center of the relevant jar package plugin and the tomcat server. And then let the `system-port` maven project to inherit the parent project. The benefit of this is that there is a centrality that can centrally manage the relevant jar packages and plugin versions and contribute to modular development.

In `system-vport` project, we have adopted the MVC architecture which using springMVC as the Controller and the spring framework as the container for managing the dependencies of each layer and the transaction. Besides, we use mybatis as the DAO layer to be responsible for interacting with the database.

There are 3 packages in the system which are called `Utils`, `Bean` and `POJO` respectively.

1. `Utils` customizes tools such as generating UUIDs, sending emails, encrypting, etc., it can help improve code reusability
2. The java class in `POJO` is the mapping between java objects and database tables.
3. The java class in the `Bean` is used to further encapsulate the classes inside the pojo to form the data format needed by the front end. It does not directly map to the database.

- From the perspective of the project level, the project can be roughly divided into **4** modules:

  1. **Interceptor**

     responsible for intercepting all requests sent from the browser, according to business requirements.

  2. **Controller** 

     accepts the request sent by the front end and calls the logical layer to invoke the operation to return relevant data or view to the front end.

  3. **service**

     Revokes the dynamic mappers. Complete the addition, deletion and change of the database, and in charge of the relevant business operations.

  4. **mapper**

     Interacts with the database.

- From the function point of view, the project can be divided into **4** modules:

  1. **User account module**

     handles requests for user account like editing private information, viewing own courses.

  2. **Course management module**

     Manage courses related function, like getting class information for coaches and getting timetable for students.

  3. **Training data and evaluation module**

     records and manages the data from each training and shows related data to coaches for further evaluation of each students.

  4. **Public module**

     responsible for handling functions shared by coaches and learners

## Version

​	Jdk 1.8

​	Maven 3.5.2

​	Spring 4.1.3

​	Mybatis 3.2.8

​	Tomcat 7

## Contribution

- Siyu Wang             [z5132696@ad.unsw.edu.au](mailto:z5132696@ad.unsw.edu.au)
- Yixuan Lin             [z5089927@ad.unsw.edu.au](mailto:z5089927@ad.unsw.edu.au)
- Liling Zhang          [z5098557@ad.unsw.edu.au](mailto:z5098557@ad.unsw.edu.au)
- Chaoyi Zhou         [z5129110@ad.unsw.edu.au](mailto:z5129110@ad.unsw.edu.au)
- Jiaqi Wang             [z5110175@ad.unsw.edu.au](mailto:z5110175@ad.unsw.edu.au)
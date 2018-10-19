# Tennis-Training

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

```
Give examples
```

### Installing

1. Bind `www.vport.com` and `image.vport.com` to `localhost`

```
Give the example
```

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

## Built With

- [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
- [Maven](https://maven.apache.org/) - Dependency Management
- [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Brief introduction of project

In this project, we use `Maven` to manage related jar files.

First we create a `pom project` to be the version management center of the relevant jar package plugin and the tomcat server. And then let the `system-port` maven project to inherit the parent project. The benefit of this is that there is a centrality that can centrally manage the relevant jar packages and plugin versions and contribute to modular development.

In `system-vport` project, we have adopted the MVC architecture which using springMVC as the Controller and the spring framework as the container for managing the dependencies of each layer and the transaction. Besides, we use mybatis as the DAO layer to be responsible for interacting with the database.

- From the perspective of the project level, the project can be roughly divided into four modules:

  1. Interceptor (responsible for intercepting all requests sent from the browser, according to business requirements)

  2. The controller accepts the request sent by the front end and calls the logical layer to invoke the operation to return relevant data or view to the front end.

  3. service (call dynamic mapper, complete the addition, deletion and change of the database, and complete the relevant business operations)

  4. mapper (mapper interacts with the database)

- From the function point of view, the project can be roughly divided into 4 modules:

  1. User account module

  2. Course Management

  3. Training data and evaluation modules

  4. Public module (responsible for handling functions shared by coaches and learners)

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

- **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.


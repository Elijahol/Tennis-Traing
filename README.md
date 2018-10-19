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

## Running the tests

1. **war file**

   Directly put the war file to the directory of tomcat/webapps, configure the Nginx and start the tomcat server.

2. **Zip archive**

   First unzip the file and configure the Nginx, then put the workspace into Eclipse or IntelliJ IDEA and run the project.

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

- [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
- [Maven](https://maven.apache.org/) - Dependency Management
- [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

- **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.


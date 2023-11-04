```mermaid
graph TD
    User[(User)]-->|1. Enter www.foobar.com|Browser[(Browser)]
    Browser-->|2. Lookup IP for www.foobar.com|DNS[(DNS)]
    DNS-.->|3. Return 8.8.8.8|Browser
    Browser-->|4. HTTP Request to 8.8.8.8|WebServer[(Nginx)]
    WebServer-->|5. Forward request|AppServer[(App Server)]
    AppServer-->|6. Query for data|Database[(MySQL)]
    Database-.->|7. Return data|AppServer
    AppServer-.->|8. HTML response|WebServer
    WebServer-.->|9. Return HTML response|Browser
    Browser-->|10. Render webpage|User

# In this diagram:

The "User" represents a user wanting to access the website. 

The "Server" is the single server hosting the infrastructure, with an IP address of 8.8.8.8.

Within the server, there is an Nginx web server ("Nginx"), an application server ("App Server"), the application codebase ("App Files"), and a MySQL database ("MySQL").  

The "Domain" section represents the domain name "foobar.com" with a "www" subdomain.

The arrows indicate the flow of requests and data:

The user's requests go to both the Nginx web server and the domain "foobar.com." 

Nginx serves static content and routes dynamic requests to the application server.

The application server processes requests and accesses the application codebase and the MySQL database.

The "www" subdomain resolves to the server's IP address.

# Explanations

A "server" is a physical or virtual machine that hosts the web stack components.

The domain name "foobar.com" is used to identify and access the website. The "www" subdomain is used to specify the web server to contact. 

The "www" is a DNS record representing the web server, used to route HTTP requests to the appropriate server.

The web server (Nginx) serves as an entry point, handling HTTP requests and load balancing. 

The application server processes dynamic requests, executing the application codebase.

The database (MySQL) stores data used by the application. 

To communicate with the user's computer, the server uses HTTP over the internet.

# Issues

Issues with this infrastructure include:

- Single Point of Failure (SPOF) due to having a single server, which can lead to downtime if the server fails.

- Downtime during maintenance, especially when restarting the web server to deploy new code.

- Inability to scale efficiently if there is a sudden increase in incoming traffic, as a single server may not handle high loads effectively.

```
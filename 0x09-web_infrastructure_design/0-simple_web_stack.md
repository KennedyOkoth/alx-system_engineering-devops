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


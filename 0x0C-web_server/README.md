# ALX System Engineering DevOps - Web Server Project

## Curriculum Overview


## Concepts

### What is a Child Process?

#### Background Context

- Tasks graded on server configuration and automated script creation.
- Emphasis on automating tasks for efficient management.

### Learning Objectives

- General understanding of web servers, child processes, and HTTP requests.
- DNS concepts, record types (A, CNAME, TXT, MX).
- Avoiding plagiarism, emphasizing self-solutions.

## Requirements

- **General:**
  - Editors: vi, vim, emacs
  - Ubuntu 16.04 LTS interpretation
  - README.md file mandatory
  - Bash scripts must be executable
  - Shellcheck (version 0.3.7) compliance
  - First line: `#!/usr/bin/env bash`
  - Second line: Comment explaining the script
  - No systemctl for restarting a process

## Tasks

### 0. Transfer a file to your server

- Bash script for file transfer with scp.
- Usage: `0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY`

### 1. Install Nginx web server

- Bash script to install Nginx on web-01.
- Nginx should listen on port 80 and return "Hello World!" on root GET request.

### 2. Setup a domain name

- Provide a domain name (e.g., foobar.tech).
- Configure DNS records with A entry pointing to web-01 IP.
- Verify domain registration.

### 3. Redirection

- Configure Nginx to redirect /redirect_me to another page.
- Redirect must be a "301 Moved Permanently."

### 4. Not found page 404

- Configure Nginx to have a custom 404 page with specific content.
- 404 error code, page contains "Ceci n'est pas une page."

### 5. Install Nginx web server (w/ Puppet)

- Puppet manifest to install and configure Nginx.
- Nginx listening on port 80, root GET request returns "Hello World!"
- Includes a 301 redirect when querying /redirect_me.

## Copyright

© 2024 ALX, All rights reserved.

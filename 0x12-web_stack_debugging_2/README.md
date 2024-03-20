# Web Stack Debugging #2

## Overview

Welcome to the project "Web Stack Debugging #2". In this project, we'll delve into debugging various issues related to web server configuration and permissions. We'll focus on fixing issues such as running software as another user, ensuring proper user permissions for running Nginx, and creating concise Bash scripts to automate these tasks.

## Project Details

- **Authors:** Sylvain Kalache, co-founder at Holberton School
- **Project Start:** Mar 18, 2024 6:00 AM
- **Project End:** Mar 20, 2024 6:00 AM
- **Auto Review:** An auto review will be launched at the deadline

## Concepts

For this project, we'll explore the concept of **Web stack debugging**.

## Requirements

### General

- All files will be interpreted on Ubuntu 20.04 LTS
- All files should end with a new line
- A `README.md` file at the root of the folder of the project is mandatory
- All Bash script files must be executable
- Bash scripts must pass Shellcheck without any error
- Bash scripts must run without error
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining what the script is doing

## Tasks

1. **Run software as another user**
   - Write a Bash script that accepts one argument and runs the `whoami` command under the user passed as an argument.

2. **Run Nginx as Nginx**
   - Configure the container so that Nginx is running as the `nginx` user.
   - Nginx must be listening on all active IPs on port 8080.

3. **7 lines or less (Advanced)**
   - Fix the issue from task #2 using a Bash script that is 7 lines long or less.

## Repository Information

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- **Directory:** 0x12-web_stack_debugging_2

## License

Copyright © 2024 ALX, All rights reserved.

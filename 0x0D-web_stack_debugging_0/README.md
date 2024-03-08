# Project: 0x0D-web_stack_debugging_0

## Overview
This project focuses on debugging web stack issues using Docker and Apache. The goal is to bring a web stack to a working state by identifying and fixing problems manually before creating a Bash script for automation.

## Curriculum
- **SE Foundations**
  - Average: 120.89%
  - Captain's log due before 2024-03-10 (in 1 day)

## Concepts
- Network basics
- Docker
- Web stack debugging

## Background Context
The Webstack debugging series aims to train in the art of debugging, an essential skill for a Full-Stack Software Engineer. Debugging involves identifying and fixing issues to ensure a web stack works as expected.

In this series, broken or bugged web stacks are provided, and the task is to come up with a Bash script that, when executed, brings the web stack to a working state. Before writing the script, manual debugging is required to understand and fix the issues.

As an example, let's consider a scenario where a server must have a copy of the /etc/passwd file in /tmp and a file named /tmp/isworking containing the string OK for the web application to function. The debugging involves copying the necessary files manually.

```bash
#!/usr/bin/env bash
# Fix my server with these magic 2 lines
cp /etc/passwd /tmp/
echo OK > /tmp/isworking
```

Note: Interactive software such as emacs or vi cannot be used in Bash scripts; everything needs to be done from the command line, including file editing.

## Installing Docker
For this project, a container is provided for solving the task. Docker can be installed on your machine, Ubuntu 14.04 VM, or Ubuntu 16.04 VM if you have upgraded.

- [Mac OS](https://docs.docker.com/desktop/install/mac/)
- [Windows](https://docs.docker.com/desktop/install/windows/)
- [Ubuntu 14.04](https://docs.docker.com/install/linux/docker-ce/ubuntu-legacy/)
- [Ubuntu 16.04](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## Resources
- `man` or `help`: `curl`

## Requirements
### General
- Allowed editors: vi, vim, emacs
- All files interpreted on Ubuntu 14.04 LTS
- All files should end with a new line
- A README.md file at the root of the project folder is mandatory
- All Bash script files must be executable
- Bash scripts must pass Shellcheck without any error
- Bash scripts must run without error
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining the script's purpose

## Tasks
### Task 0: Give me a page!
- Mandatory
- Score: 0.0%
- Read the Docker concept page
- Get Apache to run on the container and return a page containing "Hello Holberton" when querying the root of it.

Example:
```bash
docker run -p 8080:80 -d -it holbertonschool/265-0
```
After starting the Docker container, curling the port 8080 mapped to the Docker container port 80 returns an error message. Fix the issue manually and provide the command(s) used to fix the problem in the answer file.

Repo:
- GitHub repository: alx-system_engineering-devops
- Directory: 0x0D-web_stack_debugging_0
- File: 0-give_me_a_page

## Acknowledgment
© 2024 ALX, All rights reserved.

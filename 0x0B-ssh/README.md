# ALX System Engineering DevOps

## Project: 0x0B-ssh

### Table of Contents
1. [Description](#description)
2. [Background Context](#background-context)
3. [Resources](#resources)
4. [Learning Objectives](#learning-objectives)
5. [Copyright - Plagiarism](#copyright-plagiarism)
6. [Requirements](#requirements)
    - [General](#general)
    - [Your servers](#your-servers)
7. [Tasks](#tasks)
    - [0. Use a private key](#0-use-a-private-key)
    - [1. Create an SSH key pair](#1-create-an-ssh-key-pair)
    - [2. Client configuration file](#2-client-configuration-file)
    - [3. Let me in!](#3-let-me-in!)

---

## Description

This project focuses on SSH (Secure Shell) and covers various tasks related to using private keys, creating SSH key pairs, configuring the client, and allowing access to a server using SSH.

---

## Background Context

Along with this project, you have been attributed an Ubuntu server, living in a datacenter. Connect using SSH with an RSA key, and the server is configured with the public key you created in a previous project.

### Resources

- [What is a (physical) server - text](#)
- [What is a (physical) server - video](#)
- [SSH essentials](#)
- [SSH Config File](#)
- [Public Key Authentication for SSH](#)
- [How Secure Shell Works](#)
- [SSH Crash Course](#) (Long, but highly informative. Watch this if configuring SSH is still confusing.)

### Learning Objectives

By the end of this project, you should be able to explain:
- What is a server
- Where servers usually live
- What is SSH
- How to create an SSH RSA key pair
- How to connect to a remote host using an SSH RSA key pair
- The advantage of using `#!/usr/bin/env bash` instead of `/bin/bash`

---

## Copyright - Plagiarism

You are tasked to come up with solutions for the tasks to meet the learning objectives. Plagiarism is strictly forbidden and will result in removal from the program.

---

## Requirements

### General

- Allowed editors: vi, vim, emacs
- Files interpreted on Ubuntu 20.04 LTS
- Files end with a new line
- A `README.md` file at the root of the project folder is mandatory
- All Bash script files must be executable
- The first line of all Bash scripts should be `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining the script's purpose

### Your servers

| Name            | Username | IP             | State   |
| --------------- | -------- | -------------- | ------- |
| 124307-web-01   | ubuntu   | 100.25.156.8   | running |

---

## Tasks

### 0. Use a private key

Write a Bash script (`0-use_a_private_key`) that uses `ssh` to connect to your server using the private key `~/.ssh/school` with the user `ubuntu`.

[GitHub repository: alx-system_engineering-devops](#)
    
### 1. Create an SSH key pair

Write a Bash script (`1-create_ssh_key_pair`) that creates an RSA key pair.

[GitHub repository: alx-system_engineering-devops](#)

### 2. Client configuration file

Share your SSH client configuration in your answer file (`2-ssh_config`).

[GitHub repository: alx-system_engineering-devops](#)

### 3. Let me in!

Add the provided SSH public key to your server so that we can connect using the `ubuntu` user.

[GitHub repository: alx-system_engineering-devops](#)

---

*Copyright © 2023 ALX, All rights reserved.*

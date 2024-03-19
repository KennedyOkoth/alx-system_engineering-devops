# 0x14. MySQL

## Overview
This project encompasses setting up and configuring MySQL on multiple servers, creating users, establishing replication, and implementing backup strategies. It aims to reinforce understanding and practical skills in database administration, web stack debugging, and MySQL setup.

## Project Details
- **Author**: Sylvain Kalache, co-founder at Holberton School
- **Weight**: 1
- **Project Start**: Mar 19, 2024 6:00 AM
- **Project Deadline**: Mar 20, 2024 6:00 AM
- **Checker Release**: Mar 19, 2024 12:00 PM
- **Auto Review**: Scheduled for the deadline

## Concepts Covered
For this project, key concepts include:
- Fresh Reset and Install MySQL 5.7
- Database administration
- Web stack debugging

## Learning Objectives
By the end of this project, learners should be able to:
- Understand the main role of a database
- Define database replica and its purpose
- Comprehend the necessity of storing database backups in different physical locations
- Execute regular operations to ensure the effectiveness of a database backup strategy

## Requirements
### General
- Allowed editors: vi, vim, emacs
- Interpretation on Ubuntu 16.04 LTS
- All files should end with a new line
- A README.md file is mandatory
- Bash scripts must be executable and pass Shellcheck
- First line of Bash scripts should be `#!/usr/bin/env bash`
- Second line should be a comment explaining the script's purpose

## Servers Information
| Name          | Username | IP               | State   |
|---------------|----------|------------------|---------|
| 124307-web-01 | ubuntu   | 54.210.13.181   | running |
| 124307-web-02 | ubuntu   | 54.90.62.48     | running |
| 124307-lb-01  | ubuntu   | 35.174.211.106  | running |

## Tasks
1. **Install MySQL**
   - MySQL distribution: 5.7.x
   - Ensure SSH project task #3 is completed for web-01 and web-02

2. **Let us in!**
   - Create MySQL user `holberton_user` on web-01 and web-02 with host `localhost`
   - Password: `projectcorrection280hbtn`
   - Grant permissions to check primary/replica status

3. **If only you could see what I've seen with your eyes**
   - Create a database `tyrell_corp` on web-01
   - Create a table `nexus6` within `tyrell_corp` database with at least one entry
   - Grant `SELECT` permissions to `holberton_user`

4. **Quite an experience to live in fear, isn't it?**
   - Create a new user `replica_user` on web-01 for replica server
   - Set up replication for `tyrell_corp` database
   - Provide MySQL primary and replica configurations

5. **MySQL backup**
   - Write a Bash script to generate MySQL dump and create a compressed archive
   - Dump must contain all MySQL databases
   - Dump file: `backup.sql`
   - Archive name format: `day-month-year.tar.gz`
   - MySQL user to connect: `root`

## Copyright & Plagiarism
- Self-solve tasks to meet learning objectives
- No copying or publishing of project content
- Strict prohibition against plagiarism with consequences including removal from the program

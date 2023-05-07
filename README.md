# Umami Ansible Docker Deploy

This repository contains the source code and documentation for deploying Umami Analytics using Ansible and Docker. Umami Analytics is an open-source, self-hosted web analytics solution.

## Table of Contents

- [Overview](#overview)
- [Directory Structure](#directory-structure)
- [Prerequisites](#prerequisites)
- [Steps to Execute](#steps-to-execute)
- [Checking the Status](#checking-the-status)
- [Taking a Backup](#taking-a-backup)
- [Additional Information](#additional-information)
- [GitHub Repository](#github-repository)

## Overview

This project deploys Umami Analytics using Ansible and Docker. The project consists of two Docker containers - one for Umami and another for PostgreSQL.

## Directory Structure

```
umami-ansible-docker-deploy/
├── docker/
│   ├── postgres-docker/
│   │   └── Dockerfile
│   └── umami-docker/
│       └── Dockerfile
├── README.md
├── scripts/
│   ├── backup-umami.sh
│   ├── check-umami.sh
│   └── install_prerequisites.sh
└── ansible-deploy/
    ├── deploy.yml
    └── hosts
```

- `docker/`: Contains Dockerfiles for Umami and PostgreSQL containers.
- `ansible-deploy/`: Contains the Ansible playbook and hosts file for deploying the containers.
- `scripts/`: Contains scripts for backing up the Umami database, checking the Umami status, and installing prerequisites.

## Prerequisites

Before you start, make sure you have the following installed on your machine:

- Ansible
- Docker
- Docker Compose
- PostgreSQL client
- Python3 and pip3
- psycopg2 Python package

You can use the provided script `install_prerequisites.sh` to install these dependencies. Run the script with:

```bash
chmod +x scripts/install_prerequisites.sh
./scripts/install_prerequisites.sh
```

## Steps to Execute

1. Customize the variables in `ansible-deploy/deploy.yml` to match your desired database credentials and port number for Umami.

2. Navigate to the `ansible-deploy` directory:

```bash
cd umami-ansible-docker-deploy/ansible-deploy/
```

3. Execute the Ansible playbook:

```bash
ansible-playbook -i hosts deploy.yml
```

4. Wait for the playbook to finish, and the Umami and PostgreSQL containers should be up and running.

## Checking the Status

To check if the Umami container is working, run the provided `check-umami.sh` script:

```bash
chmod +x scripts/check-umami.sh
./scripts/check-umami.sh
```

If Umami is working, the script will output "Umami is working." Otherwise, it will output an error message with the HTTP status code.

## Taking a Backup

To take a backup of the Umami database, use the provided `backup-umami.sh` script:

```bash
chmod +x scripts/backup-umami.sh
./scripts/backup-umami.sh
```

This script creates a SQL dump of the Umami database and saves it to the specified backup directory. The backup filename contains a timestamp.

## Additional Information

You can customize the Dockerfiles, the Ansible playbook, or the provided scripts according to your needs. For example, you can change the PostgreSQL version, modify the backup directory, or update the Umami URL in the `check-umami.sh` script.

## GitHub Repository

The source code and documentation for this project can be found on the following GitHub
# Ansible Lab Docker Setup

This repository provides a Docker environment for running Ansible automation tasks, pre-configured with essential tools like Ansible, Python, and networking utilities.

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/) #optional
- [Make](https://www.gnu.org/software/make/)

## Project Structure

- `Dockerfile`: Defines the container image.
- `docker-compose.yml`: Manages container configuration and network.
- `Makefile`: Automates Docker container management tasks.
- `requirements.txt`: Python dependencies for the Ansible environment.

## Makefile Commands

- **`make build`**: Build the Docker image.
- **`make up`**: Start the container.
- **`make down`**: Stop and remove the container.
- **`make restart`**: Restart the container.
- **`make logs`**: View container logs.
- **`make shell`**: Open a bash shell inside the container.

## Network Configuration

- **Subnet**: `172.16.16.0/24`
- **Container IP**: `172.16.16.100`
- **Gateway**: `172.16.16.1`

### Exposed Ports:
- **443 (HTTPS)**: Secure access to the container.
- **830 (NETCONF)**: For network automation tasks.

## Usage

1. Clone the repository:

   ```bash
   git clone "repo_url"
   cd Automation-Inside-Docker
   make build
   make up

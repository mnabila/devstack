# devstack

Local development infrastructure stack managed with Docker Compose.

## Services

| Service      | Image                          | Ports              | Description                                       |
|------------- |------------------------------- |------------------- |-------------------------------------------------- |
| Portainer    | `portainer/portainer-ce`       | `9443`, `8000`     | Container management UI                           |
| PostgreSQL   | `postgres:17`                  | `5432`             | Relational database                               |
| MariaDB      | `mariadb:lts`                  | `3306`             | MySQL-compatible relational database              |
| RabbitMQ     | Custom (see `services/rabbitmq`) | `5672`, `15672`  | Message broker with delayed message exchange plugin |
| Redis        | `redis:8.2`                    | `6379`             | In-memory key-value store                         |
| n8n          | `n8nio/n8n:latest`             | `5678`             | Workflow automation tool                          |

## Prerequisites

- Docker or Podman
- Docker Compose

## Usage

```bash
# Start all services
docker compose up -d

# Start specific services
docker compose up -d postgresql redis

# Stop all services
docker compose down

# View logs
docker compose logs -f [service]
```

## Default Credentials

| Service    | Username   | Password   |
|----------- |----------- |----------- |
| PostgreSQL | `postgres` | `postgres` |
| MariaDB    | `root`     | `toor`     |
| RabbitMQ   | `admin`    | `admin`    |
| n8n        | `admin`    | `admin`    |

## Project Structure

```
.
├── data/                # Persistent volumes (gitignored)
├── services/
│   └── rabbitmq/        # Custom RabbitMQ image with delayed message exchange plugin
├── docker-compose.yml
└── README.md
```

## License

AGPL-3.0

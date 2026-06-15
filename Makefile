INFRA_COMPOSE := infra/docker-compose.yml
OBS_COMPOSE := observability/docker-compose.yml

# Infrastructure
.PHONY: infra-up infra-down infra-logs
infra-up:
	podman-compose -f $(INFRA_COMPOSE) up -d

infra-down:
	podman-compose -f $(INFRA_COMPOSE) down

infra-logs:
	podman-compose -f $(INFRA_COMPOSE) logs -f

# Observability
.PHONY: obs-up obs-down obs-logs
obs-up:
	podman-compose -f $(OBS_COMPOSE) up -d

obs-down:
	podman-compose -f $(OBS_COMPOSE) down

obs-logs:
	podman-compose -f $(OBS_COMPOSE) logs -f

# All
.PHONY: up down
up: infra-up obs-up

down: infra-down obs-down

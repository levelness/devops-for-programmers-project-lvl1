compose-build:
	docker-compose -f docker-compose.yml build app

compose-dev:
	docker-compose --env-file ./app/.env up

ci:
	docker-compose --env-file ./app/.env -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

compose-push:
	docker-compose -f docker-compose.yml push app

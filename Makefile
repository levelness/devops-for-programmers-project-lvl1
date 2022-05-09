start:
	docker-compose up

compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

compose-build:
	docker-compose -f docker-compose.yml build

ci:
	make compose-test

push:
	docker push levelness/devops-for-programmers-project-lvl1:latest	
start:
	docker-compose up

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

build:
	docker-compose -f docker-compose.yml build app

ci:
	make test

push:
	docker push levelness/devops-for-programmers-project-lvl1:latest	
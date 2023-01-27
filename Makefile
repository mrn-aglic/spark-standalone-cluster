build:
	docker-compose build

build-nc:
	docker-compose build --no-cache

build-progress:
	docker-compose build --no-cache --progress=plain

down:
	docker-compose down --volumes --remove-orphans

run:
	make down && docker-compose up

run-generated:
	make down && sh ./generate-docker-compose.sh 3 && docker compose -f docker-compose.generated.yml up

run-scaled:
	make down && docker-compose up --scale spark-worker=3

run-d:
	make down && docker-compose up -d

stop:
	docker-compose stop

submit:
	docker exec da-spark-master spark-submit --master spark://spark-master:7077 --deploy-mode client ./apps/$(app)

rm-results:
	rm -r data/results/*

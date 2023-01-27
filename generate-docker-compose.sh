#!/bin/bash

NUM_WORKERS=$1

DOCKER_COMPOSE_NAME="docker-compose.generated.yml"

port=8081

echo "" > $DOCKER_COMPOSE_NAME

DOCKER_WORKERS_TMPL=""

for((i=1; i <= NUM_WORKERS; i++))
do
  DOCKER_WORKER_TMPL=$(cat templates/worker.tmpl.yml)

  num=$i
  DOCKER_WORKER_TMPL="${DOCKER_WORKER_TMPL//\{worker_num\}/$num}"
  DOCKER_WORKER_TMPL="${DOCKER_WORKER_TMPL//\{port\}/$port}"

  DOCKER_WORKERS_TMPL="$DOCKER_WORKERS_TMPL\n\n  $DOCKER_WORKER_TMPL"

  port=$((port + 1))

done

DOCKER_COMPOSE_TMPL=$(cat templates/docker-compose.tmpl.yml)

DOCKER_COMPOSE_TMPL="${DOCKER_COMPOSE_TMPL/\{workers\}/$DOCKER_WORKERS_TMPL}"

echo "$DOCKER_COMPOSE_TMPL" > $DOCKER_COMPOSE_NAME
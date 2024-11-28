#!/bin/bash

sudo service docker start

docker-compose down --remove-orphans

docker-compose pull

docker-compose up -d

docker-compose logs -f
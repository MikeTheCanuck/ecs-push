#! /bin/bash
source ./bin/env.sh
while ! docker-compose run web python manage.py migrate >> /dev/null 2>&1 ; do
    sleep 1
done
docker-compose run web python manage.py test
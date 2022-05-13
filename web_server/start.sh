#!/bin/bash

# Waiting for MySQL database to be ready ...
db_cmd="mysql -h ${DB_HOST} -u ${DB_USER} -P ${DB_PORT} "-p${DB_PASSWORD}""
counter=1

while ! ${db_cmd} -e "show databases;" > /dev/null 2>&1; do
    sleep 1
    counter=$(expr ${counter} + 1)
done
echo "[Django]" $(date "+%Y/%m/%d-%H:%M:%S") MySQL database ready! "(${counter}sec)"

# start
if [ "${EXECUTION_TYPE}" = "uwsgi" ]; then
    uwsgi --ini /uwsgi.ini
else
    python manage.py runserver 8000
fi

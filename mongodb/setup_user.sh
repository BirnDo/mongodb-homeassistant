#!/bin/bash

echo "************************************************************"
echo "Setting up users..."
echo "************************************************************"

# create root user
nohup gosu mongodb mongo DBNAME --eval "db.createUser({user: 'admin', pwd: 'TestPassword', roles:[{ role: 'root', db: 'DBNAME' }, { role: 'read', db: 'local' }]});"

# create app user/database
nohup gosu mongodb mongo DBNAME --eval "db.createUser({ user: 'myuser', pwd: 'TestPassword', roles: [{ role: 'readWrite', db: 'DBNAME' }, { role: 'read', db: 'local' }]});"

echo "************************************************************"
echo "Shutting down"
echo "************************************************************"
nohup gosu mongodb mongo admin --eval "db.shutdownServer();"
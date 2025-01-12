#!/bin/sh

# Start app1 on port 3000
cd /usr/src/app/app1
npm start &

# Start app2 on port 4000
cd /usr/src/app/app2
npm start &

# Keep the container running
tail -f /dev/null

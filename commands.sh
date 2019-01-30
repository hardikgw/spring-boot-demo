#!/bin/bash
docker run --rm --privileged -p 5050:5050 -p 5051:5051 -p 8080:8080 -p 31180:31180 --name=mesos mesos/mesos-mini

# once deploy is complete, check for health check manually
docker exec mesos curl -v -H GET http://localhost:31180/demo
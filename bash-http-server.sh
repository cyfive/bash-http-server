#!/bin/bash

HTTP_PORT=8080

nc -l ${HTTP_PORT} -e dispatcher.sh
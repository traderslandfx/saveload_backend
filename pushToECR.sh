#!/bin/bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 645223241468.dkr.ecr.us-east-1.amazonaws.com

docker build -t tv-backend .

docker tag tv-backend:latest 645223241468.dkr.ecr.us-east-1.amazonaws.com/tv-backend:latest

docker push 645223241468.dkr.ecr.us-east-1.amazonaws.com/tv-backend:latest

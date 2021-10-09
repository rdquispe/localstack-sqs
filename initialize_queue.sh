#!/usr/bin/env bash

aws --endpoint-url=http://localhost:4566 sqs create-queue --queue-name onexlab

aws --endpoint-url=http://localhost:4566 sqs list-queues

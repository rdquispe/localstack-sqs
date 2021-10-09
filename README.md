# LocalStack SQS


https://onexlab-io.medium.com/localstack-sqs-a0c36fd13108


## Run docker
```
docker-compose -f docker-compose-local.yml up && docker-compose rm -fsv 
```

## Run initialize_queue (after docker-compose up)
```sh
chmod +x initialize_queue.sh

./initialize_queue.sh  
```

## Create SQS Queue Locally
```
aws --endpoint-url=http://localhost:4566 sqs create-queue --queue-name onexlab
```

## List SQS Queue
```
aws --endpoint-url=http://localhost:4566 sqs list-queues
```

## Create SQS Queue Message
```
aws --endpoint-url=http://localhost:4566 sqs send-message --queue-url http://localhost:4566/000000000000/onexlab --message-body 'Welcome to SQS queue by Onexlab'
```

## Read SQS Queue Messages
```
aws --endpoint-url=http://localhost:4566 sqs receive-message --queue-url http://localhost:4566/000000000000/onexlab
```

## Delete SQS Queue
```
aws --endpoint-url=http://localhost:4566 sqs delete-queue --queue-url http://localhost:4566/000000000000/onexlab
```
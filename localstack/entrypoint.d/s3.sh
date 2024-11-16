#!/bin/bash
if [[ $SERVICES == *"s3"* ]]; then
  echo -e "Criando buckets S3"
  for filename in /etc/localstack/init/ready.d/schemas/s3/*.json; do
    echo -e "criando: " ${filename}
    awslocal sqs create-bucket --cli-input-json file://${filename}
  done
  echo -e "Buckets s3 criados com sucesso\n"
fi
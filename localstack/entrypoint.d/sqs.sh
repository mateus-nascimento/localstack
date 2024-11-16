#!/bin/bash
if [[ $SERVICES == *"sqs"* ]]; then
  echo -e "Criando filas SQS"
  for filename in /etc/localstack/init/ready.d/schemas/sqs/*.json; do
    echo -e "criando: " ${filename}
    awslocal sqs create-queue --cli-input-json file://${filename}
  done
  echo -e "Filas SQS criadas com sucesso\n"
fi
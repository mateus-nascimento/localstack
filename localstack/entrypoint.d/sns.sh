#!/bin/bash
if [[ $SERVICES == *"sns"* ]]; then
  echo -e "Criando tópicos SNS"
  for filename in /etc/localstack/init/ready.d/schemas/sns/*.json; do
    echo -e "criando: " ${filename}
    awslocal sns create-topic --cli-input-json file://${filename}
  done
  echo -e "Tópicos SNS criados com sucesso\n"
fi
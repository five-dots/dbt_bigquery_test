#!/usr/bin/env bash

project="tmkc-eval-general"
region="us-central1"
zone="us-central1-a"

gcloud dataproc clusters create dbt-python-test \
    --project ${project} \
    --region ${region} \
    --zone ${zone} \
    --single-node \
    --initialization-actions gs://goog-dataproc-initialization-actions-${region}/connectors/connectors.sh \
    --metadata spark-bigquery-connector-version=0.26.0 \
    --properties="dataproc:pip.packages=pandas==1.4.3"
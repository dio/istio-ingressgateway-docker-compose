#!/usr/bin/env bash

captured=$(docker run --network container:istio-ingressgateway \
  appropriate/curl -s \
  --retry 10 \
  --retry-connrefused \
  -H "Host: httpbin.org" \
  http://localhost:80/get | jq .url)

if [ "$captured" != '"http://httpbin.org/get"' ]; then
  exit 1
fi

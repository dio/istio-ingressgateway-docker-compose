# istio-ingressgateway docker-compose

Run `istio-ingressgateway` using `docker-compose`.

```
docker-compose down \
  && docker-compose up -d \
  && sleep 5 \
  && curl -H "Host: httpbin.org" localhost:8080/get --verbose
```

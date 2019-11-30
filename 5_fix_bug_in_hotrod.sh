echo "Fixing DB connection mutex and recucing DB access time to 100ms" 
docker run --rm -it \
    --link jaeger \
    -p8082-8085:8080-8083 \
    jaegertracing/example-hotrod:1.6 \
    all \
    --jaeger-agent.host-port=jaeger:6831 --fix-disable-db-conn-mutex -D 100ms

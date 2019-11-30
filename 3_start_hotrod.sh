docker run --rm -it \
    --link jaeger \
    -p8082-8085:8080-8083 \
    jaegertracing/example-hotrod:1.6 \
    all \
    --jaeger-agent.host-port=jaeger:6831

FROM envoyproxy/envoy:v1.26.0

USER root

COPY config.yaml /config.yaml
WORKDIR /
EXPOSE 80 443 444 8080 9901
CMD envoy \
    -c /config.yaml \
    --mode serve \
    --log-level debug \
    --log-format '{"time": "%Y-%m-%d %T.%e", "level": "%l", "type": "%n", "message": "%j"}' \
    --concurrency 1 \
    --reject-unknown-dynamic-fields

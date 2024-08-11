FROM alpine:3.20.2
ARG TAG_VERSION=v1.0.3

RUN apk add --no-cache curl && \
  curl --output /nvidia-pstated https://github.com/sasha0552/nvidia-pstated/releases/download/${TAG_VERSION}/nvidia-pstated && \
  chmod +x /nvidia-pstated

WORKDIR /
ENV NVIDIA_VISIBLE_DEVICES=all CLI_ARGS=""
CMD /nvidia-pstated ${CLI_ARGS}

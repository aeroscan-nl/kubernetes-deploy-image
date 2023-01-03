FROM docker

ARG ARCH=amd64
ARG KUBERNETES_RELEASE=v1.21.3

WORKDIR /bin
RUN set -e \
 && apk add git curl bash gzip jq procps tar wget yq \
 && apk add envsubst --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
 && curl -fsSLO https://storage.googleapis.com/kubernetes-release/release/${KUBERNETES_RELEASE}/bin/linux/${ARCH}/kubectl \
 && chmod +x kubectl

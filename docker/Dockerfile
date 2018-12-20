FROM busybox

ARG VERSION

RUN \
    mkdir -p /libs && \
    cd /libs && \
    wget -O release.zip -q "https://github.com/ngageoint/elasticgeo/releases/download/${VERSION}/elasticgeo-${VERSION%-*}.zip" && \
    unzip release.zip && \
    rm -f release.zip

ADD install.sh /install.sh

ENTRYPOINT ["/install.sh"]


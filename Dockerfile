FROM apluslms/compile-jsvee:0.1

ARG VERSION=62632e806ea679b89c9b71c4f96c28b74c6b1f46
ARG DIR=kelmu-$VERSION

RUN mkdir -p /work/ /opt/kelmu/ && cd /opt/kelmu/ \
 && curl -LSs https://github.com/Aalto-LeTech/kelmu/archive/$VERSION.tar.gz | tar -zx \
 && cp $DIR/kelmu.js \
       $DIR/kelmu.editor.js \
       $DIR/kelmu.css \
       . \
 && rm -r $DIR

COPY config.yml template.js /opt/

CMD ["-f", "html/_static/kelmu/"]

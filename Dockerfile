FROM apluslms/compile-jsvee:0.4

ARG VERSION=72783b050e4e9f9b0ce2f919764ca3de44b04848
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

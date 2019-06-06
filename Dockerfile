FROM apluslms/compile-jsvee:0.8

ARG VERSION=2ad04a75ee0295c2d0352679434057b813d9759b
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

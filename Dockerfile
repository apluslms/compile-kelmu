FROM apluslms/compile-jsvee:0.4

ARG VERSION=d9131fa22e041a02fafc0e65e13df03be3e6825b
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

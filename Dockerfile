# fluent/fluentd:v1.11.2-2.0
FROM fluent/fluentd@sha256:d152651e4e66ed59cacfeeb16f335884087d3ee5aa7620a7974a43f91daaa2f9
USER root
RUN apk update \
 && apk add --no-cache --virtual .build-deps \
        sudo build-base ruby-dev bash libcurl \
 && fluent-gem install typhoeus \
 && fluent-gem install fluent-plugin-elasticsearch \
 && apk del .build-deps \
 && rm -rf /{tmp,var/tmp}/{*,.[^.]*} /usr/lib/ruby/gems/*/cache/*.gem

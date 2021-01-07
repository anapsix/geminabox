FROM ruby:2.7.2-alpine
RUN apk add make g++ && \
    gem install geminabox guard guard-shell
COPY entrypoint.sh /
COPY config.ru /tmp/
COPY Guardfile /tmp/
EXPOSE 3000
CMD /entrypoint.sh

FROM kong:1.1

ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/etc/kong/kong.yml

ADD ./kong.yml /etc/kong/kong.yml

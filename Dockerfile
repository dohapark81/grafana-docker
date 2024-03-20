FROM grafana/grafana-oss:10.2.2

COPY ./grafana.ini conf/defaults.ini

EXPOSE 8080

RUN grafana cli plugins install grafana-athena-datasource

ENTRYPOINT [ "/run.sh" ]
FROM elasticsearch:2.4.1

# Install the required plugins
RUN plugin install polyfractal/elasticsearch-inquisitor
RUN plugin install royrusso/elasticsearch-HQ
RUN plugin install https://github.com/NLPchina/elasticsearch-sql/releases/download/2.4.1.0/elasticsearch-sql-2.4.1.0.zip

CMD ["elasticsearch"]

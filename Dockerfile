
FROM yelp/docker-custodian:0.5.1

RUN mkdir -p /code
ADD entrypoint.sh /code/entrypoint.sh
CMD ["sh", "/code/entrypoint.sh"]

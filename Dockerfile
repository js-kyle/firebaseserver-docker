FROM mhart/alpine-node:12
LABEL maintainer="https://github.com/js-kyle"
WORKDIR /app
RUN npm i firebase-server@1.0.2

# Only copy over the node pieces we need from the above image
FROM mhart/alpine-node:slim-12
LABEL maintainer="https://github.com/js-kyle"
WORKDIR /app
COPY --from=0 /app .
EXPOSE 5555
ENTRYPOINT [ "./node_modules/.bin/firebase-server" ]

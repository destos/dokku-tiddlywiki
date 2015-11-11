FROM octohost/nodejs

ENV PORT 8080

ADD . /srv/www

WORKDIR /srv/www

RUN npm install --unsafe-perm

EXPOSE 8080

# Create our wiki on the first run
RUN node_modules/.bin/tiddlywiki contents --init server

CMD node_modules/.bin/tiddlywiki contents --server

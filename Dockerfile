FROM octohost/nodejs

ENV PORT 3000

ADD . /srv/www

WORKDIR /srv/www

RUN npm install --unsafe-perm

EXPOSE 3000

# Create our wiki on the first run
RUN node_modules/.bin/tiddlywiki contents --init server

CMD node_modules/.bin/tiddlywiki contents --server 3000

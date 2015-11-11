FROM octohost/nodejs

ENV PORT 3000
ENV WIKI_RENDER_TYPE "text/plain"
ENV WIKI_ROOTTIDDLER ""
ENV WIKI_SERVE_TYPE "text/html"
ENV WIKI_USERNAME ""
ENV WIKI_PASSWORD ""
ENV WIKI_PATHPREFIX ""

ADD . /srv/www

WORKDIR /srv/www

RUN npm install --unsafe-perm

EXPOSE 3000

# Create our wiki on the first run
RUN node_modules/.bin/tiddlywiki contents --init server

CMD npm run start

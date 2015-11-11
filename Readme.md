# Installing wiki

`on remote`
```bash
$ dokku apps:create wiki
$ dokku volumes:add wiki /srv/www/contents/
```

Do your deploy

`locally`
```bash
$ git push dokku master
```

Enjoy!

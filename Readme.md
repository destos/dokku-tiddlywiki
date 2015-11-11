# TiddlyWiki on dokku!

## Installing:

### Get the server ready

`on remote`
```bash
$ dokku apps:create wiki
$ dokku volume:add wiki /srv/www/contents/
```

### Do your deploy

`locally`
```bash
$ git remote add dokku dokku@<your-host.com>:<your-app-name>
$ git push dokku master
```

Enjoy!

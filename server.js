var $tw = require("tiddlywiki/boot/boot.js").TiddlyWiki();
var hostenv = require('hostenv');
var path = require('path');

$tw.boot.argv = [
  path.resolve(__dirname, './contents/'),
  "--verbose",
  "--server",
  hostenv.PORT || '3000',
  "$:/core/save/all",
  process.env.WIKI_RENDER_TYPE || '',
  process.env.WIKI_SERVE_TYPE || '',
  process.env.WIKI_USERNAME || '',
  process.env.WIKI_PASSWORD || '',
  hostenv.HOSTNAME || '0.0.0.0',
];
// start things up
$tw.boot.boot();

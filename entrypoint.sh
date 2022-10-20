#!/usr/bin/env bash
if [[ ! -f ./index.php ]]; then
  mv index.nginx-debian.html index.php
else
  rm index.nginx-debian.html
fi

service nginx start
php-fpm

# if you in google cloud run
## #!/usr/bin/env sh
# set -e
#
# php-fpm -D
# nginx -g 'daemon off;'

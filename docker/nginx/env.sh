#!/usr/bin/env bash

sed -i 's|${ENDERECO_API}|'"$ENDERECO_API"'|' /etc/nginx/conf.d/default.conf

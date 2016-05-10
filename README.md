# nginx-demo
Basic demo of IP whitelisting on Heroku using a simple Sinatra app, Puma webserver and Nginx proxy.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

If a request comes from a whitelisted IP the app processes the request, if not then a HTTP 403 forbidden response is returned.

## Configuration

Whitelisted IP address is contained in the `NGINX_ALLOW` config var for the app.

Heroku sets the `X-Forwarded-For` header to contain the originating IP address of the client:
https://devcenter.heroku.com/articles/http-routing#heroku-headers

## Buildpacks

In addition to the Ruby buildpack used by Sinatra, the app also uses the Nginx buildpack with a custom configuration file.
https://github.com/heroku/heroku-buildpack-nginx

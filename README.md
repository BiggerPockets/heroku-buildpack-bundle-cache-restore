# heroku-buildpack-bundle-cache-restore

Download asset manifest file from CDN host connected to Digital Ocean Spaces. Asset manifest maps filenames with their digested counterparts. It is need on Heroku side, when your digested assets are served solely from CDN asset host.

## Prerequisites

    $ heroku buildpacks:add https://github.com/BiggerPockets/heroku-buildpack-bundle-cache-restore
    $ heroku config:add AWS_ACCESS_KEY_ID
    $ heroku config:add AWS_SECRET_ACCESS_KEY
    $ heroku config:add AWS_REGION
    $ heroku config:add AWS_BUNDLE_CACHE_BUCKET
    $ heroku config:add AWS_BUNDLE_CACHE_PATH

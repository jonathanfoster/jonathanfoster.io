#!/usr/bin/env bash

aws s3 sync public/ s3://www.jonathanfoster.io --acl public-read
aws cloudfront create-invalidation --distribution-id E28M3GSRVS7HEH --paths '/*'

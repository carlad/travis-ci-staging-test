#!/bin/bash
TOKEN=${TRAVIS_COM_KEY}
curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token TOKEN" \
  -d "$body" \
  https://api.travis-ci.com/repo/travis-pro%2Ftest-repo-staging1/requests

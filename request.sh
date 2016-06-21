#!/bin/bash
curl -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token ${TRAVIS_COM_KEY}" \
  -d "$body" \
  https://api.travis-ci.com/repo/travis-pro%2Ftest-project/requests

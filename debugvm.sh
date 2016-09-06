#! /usr/bin/env bash

usage() {
    echo usage: debugvm -j job -t token >/dev/stderr
    exit $1
}

while getopts ":j:t:h" o; do
    case $o in
        j)
            job=$OPTARG
            ;;
        t)
            token=$OPTARG
            ;;
        h)
            usage 0
            ;;
        *)
            usage 1
            ;;
    esac
done
shift $((OPTIND-1))

if [[ -z $job ]] || [[ -z $token ]]; then
    usage 1
fi



body='{ "quiet": true }'

curl -i -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Travis-API-Version: 3" \
  -H "Authorization: token $token" \
  -d "$body" \
  https://api.travis-ci.org/job/$job/debug

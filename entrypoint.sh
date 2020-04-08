#!/bin/sh

#export "AWS_SECRETS=$(cat secrets.json)"

values=$(printenv AWS_SECRETS)
$( echo "$values" | jq -r 'keys[] as $k | "export \($k)=\(.[$k])"' )

#printenv | grep MYSQL

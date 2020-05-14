#!/bin/sh

#export "SECRETS=$(cat secrets.json)"

values=$(printenv SECRETS)
$( echo "$values" | jq -r 'keys[] as $k | "export \($k)=\(.[$k])"' )

#printenv | grep MYSQL

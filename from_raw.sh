#!/usr/bin/env bash

{
    printf 'pm disable --user 0 '
    perl -0pe 's/\n/\npm disable --user 0 /g; s/\npm disable --user 0 $/\n/;' raw.txt
} > disable.txt

{
    printf 'pm uninstall --user 0 '
    perl -0pe 's/\n/\npm uninstall --user 0 /g; s/\npm uninstall --user 0 $/\n/;' raw.txt
} > uninstall.txt

{
    printf '["'
    perl -0pe 's/\n/","/g; s/,"$/]/;' raw.txt
} > hail.txt

{
    printf '{\n  "name": "Samsung Android Debloat List",\n  "description": "https:\\/\\/github.com\\/Willie169\\/Samsung-Android-Debloat-List",\n  "createdDate": 1779342848042,\n  "version": "1.0",\n  "apps": [\n    {\n      "packageName": "'
    perl -0pe 's/\n/"\n    },\n    {\n      "packageName": "/g; s/,\n    {\n      "packageName": "$/\n  ]\n}/;' raw.txt
} > canta.json

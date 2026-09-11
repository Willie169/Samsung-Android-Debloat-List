#!/usr/bin/env bash

raw="$(cat raw.txt)"
echo "$raw" | sort -u >raw.txt

cat >disable.sh <<'EOFEOF'
while IFS= read -r line; do
EOFEOF
cat >uninstall.sh <<'EOFEOF'
while IFS= read -r line; do
EOFEOF

# shellcheck disable=2016
sed 's/^/pm disable --user "$line" /g' raw.txt >>disable.sh
# shellcheck disable=2016
sed 's/^/pm uninstall --user "$line" /g' raw.txt >>uninstall.sh

cat >>uninstall.sh <<'EOFEOF'
done <<EOF
$(pm list users | tail -n+2 | sed 's/^.*UserInfo{//; s/:.*}.*$//')
EOF
EOFEOF
cat >>disable.sh <<'EOFEOF'
done <<EOF
$(pm list users | tail -n+2 | sed 's/^.*UserInfo{//; s/:.*}.*$//')
EOF
EOFEOF

{
  printf '["'
  perl -0pe 's/\n/","/g; s/,"$/]/;' raw.txt
} >hail.txt

{
  printf '{\n  "name": "Samsung Android Debloat List",\n  "description": "https:\\/\\/github.com\\/Willie169\\/Samsung-Android-Debloat-List",\n  "createdDate": 1779342848042,\n  "version": "1.0",\n  "apps": [\n    {\n      "packageName": "'
  perl -0pe 's/\n/"\n    },\n    {\n      "packageName": "/g; s/,\n    {\n      "packageName": "$/\n  ]\n}/;' raw.txt
} >canta.json

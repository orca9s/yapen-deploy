#!/usr/bin/env bash
git add -A
git add -f .secrets/
echo "requirements 추가"
eb deploy --profile jsm-eb-user --staged

git reset HEAD .secrets/ requirements.txt

rm requirements.txt
echo "시크릿 제거"
git status
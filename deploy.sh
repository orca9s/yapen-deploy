#!/usr/bin/env bash

pipenv lock --requirements > requirements.txt

git add -f .secrets/ requirements.txt
echo "파일 추가"
eb deploy --profile jsm-eb-user --staged

git reset HEAD .secrets/ requirements.txt

rm requirements.txt
echo "시크릿 제거"
git status
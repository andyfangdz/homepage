#!/usr/bin/env bash
set +ex

hugo
cp CNAME public

dpl --provider=pages --github-token=$GH_TOKEN --local-dir=public

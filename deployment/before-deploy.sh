#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'oss-8-maven-deploy-debug' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    openssl aes-256-cbc -K $encrypted_c97290677436_key -iv $encrypted_c97290677436_iv -in codesigning.asc.enc -out codesigning.asc -d
    gpg --fast-import codesigning.asc
fi
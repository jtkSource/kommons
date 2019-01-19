#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'oss-8-maven-deploy-debug' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    mvn deploy -P sign,build-extras --settings deployment/settings.xml
fi
#!/usr/bin/env bash

cd /vagrant/src
svn checkout https://svn.wso2.org/repos/wso2/carbon/kernel/branches/4.2.0/
cd src/4.2.0
mvn clean install -Dmaven.test.skip=true
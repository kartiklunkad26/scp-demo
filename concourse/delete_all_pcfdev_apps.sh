#!/bin/bash

cf login -a https://api.run.pivotal.io -u klunkad@pivotal.io -p Pivotal@123 -o NY -s klunkad-test

cf target -o NY -s klunkad-test
yes | cf delete  github-webhook
yes | cf delete  github-analytics
yes | cf delete  github-eureka
yes | cf delete  stubrunner

cf target -o NY -s klunkad-stage
yes | cf delete github-webhook
yes | cf delete  github-analytics
yes | cf delete github-eureka

cf target -o NY -s klunkad-prod
yes | cf delete github-webhook
yes | cf delete  github-analytics
yes | cf delete github-eureka

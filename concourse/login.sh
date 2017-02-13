#!/bin/bash

ROOT_ADDRESS=${1:-localhost}

fly -t tutorial login -c http://${ROOT_ADDRESS} -u=admin -p=pivotal

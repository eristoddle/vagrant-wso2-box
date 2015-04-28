#!/bin/sh

cd /home/vagrant

# Postgres Driver
FILE=postgresql-9.4-1201.jdbc41.jar

if [ -f $FILE ];
then
   echo "Postgresql jdbc driver already downloaded"
else
   wget https://jdbc.postgresql.org/download/postgresql-9.4-1201.jdbc41.jar
fi

# ESB
FILE=wso2esb-4.8.1.zip

if [ -f $FILE ];
then
   echo "ESB already downloaded"
else
   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://dist.wso2.org/products/enterprise-service-bus/4.8.1/wso2esb-4.8.1.zip
fi

# AM
FILE=wso2am-1.8.0.zip

if [ -f $FILE ];
then
   echo "AM already downloaded"
else
   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/api-manager/1.8.0/wso2am-1.8.0.zip
fi

# BAM
FILE=wso2bam-2.4.1.zip

if [ -f $FILE ];
then
   echo "BAM already downloaded"
else
   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/business-activity-monitor/2.4.1/wso2bam-2.4.1.zip
fi

# GR
FILE=wso2greg-4.6.0.zip

if [ -f $FILE ];
then
   echo "GR already downloaded"
else
   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/governance-registry/4.6.0/wso2greg-4.6.0.zip
fi

## BRS
#FILE=wso2brs-2.1.0.zip
#
#if [ -f $FILE ];
#then
#   echo "BRS already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/business-rules-server/2.1.0/wso2brs-2.1.0.zip
#fi

## DSS
#FILE=wso2dss-3.2.2.zip
#
#if [ -f $FILE ];
#then
#   echo "DSS already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/data-services-server/3.2.2/wso2dss-3.2.2.zip
#fi

## CEP
#FILE=wso2cep-3.1.0.zip
#
#if [ -f $FILE ];
#then
#   echo "CEP already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/complex-event-processor/3.1.0/wso2cep-3.1.0.zip
#fi
#
## CG
#FILE=wso2cg-1.0.0.zip
#
#if [ -f $FILE ];
#then
#   echo "CG already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/cloud-gateway/1.0.0/wso2cg-1.0.0.zip
#fi
#
## MB
#FILE=wso2mb-2.2.0.zip
#
#if [ -f $FILE ];
#then
#   echo "MB already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/message-broker/2.2.0/wso2mb-2.2.0.zip
#fi
#
## SS
#FILE=wso2ss-1.5.0.zip
#
#if [ -f $FILE ];
#then
#   echo "SS already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/storage-server/1.5.0/wso2ss-1.5.0.zip
#fi
#
## TS
#FILE=wso2ts-1.1.0.zip
#
#if [ -f $FILE ];
#then
#   echo "TS already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/task-server/1.1.0/wso2ts-1.1.0.zip
#fi
#
## ELB
#FILE=wso2elb-2.1.1.zip
#
#if [ -f $FILE ];
#then
#   echo "ELB already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/elastic-load-balancer/2.1.1/wso2elb-2.1.1.zip
#fi
#
## BPS
#FILE=wso2bps-3.2.0.zip
#
#if [ -f $FILE ];
#then
#   echo "BPS already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/business-process-server/3.2.0/wso2bps-3.2.0.zip
#fi
#
## EMM
#FILE=wso2emm-1.1.0.zip
#
#if [ -f $FILE ];
#then
#   echo "EMM already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/enterprise-mobility-manager/1.1.0/wso2emm-1.1.0.zip
#fi
#
## ES
#FILE=wso2store-1.0.0.zip
#
#if [ -f $FILE ];
#then
#   echo "ES already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/enterprise-store/1.0.0/wso2store-1.0.0.zip
#fi
#
## IS
#FILE=wso2is-5.0.0.zip
#
#if [ -f $FILE ];
#then
#   echo "IS already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/identity-server/5.0.0/wso2is-5.0.0.zip
#fi
#
## UES
#FILE=wso2ues-1.0.0.zip
#
#if [ -f $FILE ];
#then
#   echo "CG already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/user-engagement-server/1.0.0/wso2ues-1.0.0.zip
#fi
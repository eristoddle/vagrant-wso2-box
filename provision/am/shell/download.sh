#!/bin/sh

cd /home/vagrant

## AM
FILE=wso2am-1.7.0.zip

if [ -f $FILE ];
then
   echo "AM already downloaded"
else
   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/api-manager/1.7.0/wso2am-1.7.0.zip
fi

## BAM
#FILE=wso2bam-2.4.1.zip
#
#if [ -f $FILE ];
#then
#   echo "BAM already downloaded"
#else
#   wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/business-activity-monitor/2.4.1/wso2bam-2.4.1.zip
#fi

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
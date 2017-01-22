#!/bin/zsh

# download the price raw data from AWS EC2 instance price 
wget https://pricing.us-east-1.amazonaws.com/offers/v1.0/aws/AmazonEC2/current/index.csv -O ec2.csv

# Before CSV parsing, we have to delete first lines which is not the part of CSV table 
# 'ex' is CLI mode of vim --  '1,5d|x' (delete #1~#5 lines) then (save and close)
ex -sc '1,5d|x' ec2.csv

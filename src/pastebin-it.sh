#!/bin/bash
##########################################
##										##
##	Written by Kong Jin Jie				##
##	Email: jinjie@aspiredesigns.com.sg	##
##	Website: www.aspiredesigns.com.sg	##
##										##
##########################################

# Get both keys from http://pastebin.com/api
api_dev_key=
api_user_key=

# Privacy
# 0 = public, 1 = unlisted, 2 = private
api_paste_private=1

# Expiry date for the paste
# N = Never, 10M = 10 mins, 1H = 1 hour, 1D = 1 day, 1M = 1 month
api_paste_expire_date=1D

# Code formatting
# List of options: http://pastebin.com/api#5
api_paste_format=text

# Method is to paste, isn't it?
api_option=paste


## Real work goes here. Simple?
paste_code=`cat`

curl http://pastebin.com/api/api_post.php -d "\
api_dev_key=$api_dev_key&\
api_user_key=$api_user_key&\
api_paste_private=$api_paste_private&\
api_paste_expire_date=$api_paste_expire_date&\
api_paste_format=$api_paste_format&\
api_option=$api_option" \
--data-urlencode api_paste_code="$paste_code"
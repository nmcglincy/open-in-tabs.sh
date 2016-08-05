#! /bin/sh
# open-in-tabs.sh -- takes a txt file of urls and open them in Google Chrome, one per tab
# TODO - what if beginning of url has neither of the two options

PAGES=$(awk '$1 ~ /^http/{ print $1 }
						 $1 ~ /^www/{ print "http://" $1 }' $1 \
	| tr "\n" " ")

for PAGE in ${PAGES}
do
	# echo ${PAGE}
	# this is just to double check things are getting formatted properly
	open -a Google\ Chrome ${PAGE}
done
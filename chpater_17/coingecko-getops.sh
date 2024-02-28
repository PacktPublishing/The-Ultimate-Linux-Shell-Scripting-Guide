#!/bin/bash

gecko_usage() {
	echo "Usage:"
        echo "To create a list of coins, do:"
        echo "./coingecko.sh -l"
        echo
        echo "To create a list of reference currencies, do:"
        echo "./coingecko.sh -c"
        echo
        echo "To get current coin prices, do:"
        echo "./coingecko.sh coin_name(s) currency"
}

gecko_api() {

	while getopts :hlc options; do
	    case $options in
	        h)
			gecko_usage
			;;
		l)
			curl -X 'GET' \
			  "https://api.coingecko.com/api/v3/coins/list?include_platform=true" \
			  -H 'accept: application/json' | jq | tee coinlist.txt
	  		;;

		c)
       			curl -X 'GET' \
			  'https://api.coingecko.com/api/v3/simple/supported_vs_currencies' \
			  -H 'accept: application/json' | jq | tee currency_list.txt
			 ;;

		\?) echo "I don't know this $OPTARG option"
			;;
		esac
		done
	}
gecko_api $1
shift $((OPTIND-1))

[[ -n $1 ]] && [[ -n $2 ]] && curl -X 'GET' \
  "https://api.coingecko.com/api/v3/simple/price?ids=$1&vs_currencies=$2&include_market_cap=true&include_24hr_vol=true&include_24hr_change=true&include_last_updated_at=true&precision=true" \
  -H 'accept: application/json' | jq

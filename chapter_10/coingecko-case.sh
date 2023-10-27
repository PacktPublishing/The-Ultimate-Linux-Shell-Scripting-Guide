#!/bin/bash

gecko_api() {
	coin=$1
	currency=$2

case "$1" in

"")
	echo "Usage:"
	echo "./coingecko.sh list"
	echo "./coingecko.sh currencies"
	echo "./coingecko.sh coin_name(s) currency"
	;;
	
list)
	curl -X 'GET' \
  "https://api.coingecko.com/api/v3/coins/list?include_platform=true" \
  -H 'accept: application/json' | jq | tee coinlist.txt
	  ;;

currencies)
       curl -X 'GET' \
  'https://api.coingecko.com/api/v3/simple/supported_vs_currencies' \
  -H 'accept: application/json' | jq | tee currency_list.txt
	 ;;

 *)
	curl -X 'GET' \
  "https://api.coingecko.com/api/v3/simple/price?ids=$coin&vs_currencies=$2&include_market_cap=true&include_24hr_vol=true&include_24hr_change=true&include_last_updated_at=true&precision=true" \
  -H 'accept: application/json' | jq
	;;
esac
}
gecko_api $1 $2

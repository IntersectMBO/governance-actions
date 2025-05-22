#!/bin/bash

# Get the current epoch
CURRENT_EPOCH=$(curl -s https://api.koios.rest/api/v1/tip?select=epoch_no | jq -r '.[0].epoch_no')

CURRENT_EPOCH_END_TIME=$(curl -s -X GET "https://api.koios.rest/api/v1/epoch_info?select=end_time&_epoch_no=$CURRENT_EPOCH&_include_next_epoch=false" | jq -r '.[0].end_time')

TODAY=$(date -d "$(date +%F)" +%s)

# Get the live governance actions
LIVE_GA_JSON=$(curl -s -X GET "https://api.koios.rest/api/v1/proposal_list?select=meta_json,proposal_id,proposal_type,expiration&expiration=gte.$CURRENT_EPOCH" \
    -H "accept: application/json" | jq --argjson curr_epoch "$CURRENT_EPOCH" --argjson curr_epoch_end "$CURRENT_EPOCH_END_TIME" '
  map({
    proposal_id,
    title: .meta_json.body.title,
    proposal_type,
    cardanoscan_link: ("https://cardanoscan.io/govAction/\(.proposal_id)"),
    expiration,
    expiration_time: ($curr_epoch_end + ((.expiration - $curr_epoch - 1) * 432000)),
  })' | jq -c '.[]' | while read -r proposal; do

    expiration_time=$(echo "$proposal" | jq -r '.expiration_time')
    WORKING_DAYS=0
    current_day=$TODAY

    while [ "$current_day" -lt "$expiration_time" ]; do
      day_of_week=$(date -d "@$current_day" +%u)
      if [ "$day_of_week" -lt 6 ]; then
        WORKING_DAYS=$((WORKING_DAYS + 1))
      fi
      current_day=$((current_day + 86400))
    done

    echo "$proposal" | jq --argjson wd "$((WORKING_DAYS - 1))" '. + {working_days_left: $wd}'

done  | jq -s '.'
)

echo $LIVE_GA_JSON > ./live-ga.json
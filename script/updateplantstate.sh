lastmaster=$(basename "$(ls plant/master | sort | tail -n1)" .json)

output="{\"master\":$lastmaster,\"updates\":["
output="$output]}"

echo $output > plant/state.json
lastmaster=$(basename "$(ls master | sort | tail -n1)" .json)

output="{\"master\":$lastmaster,\"updates\":["
output="$output]}"

echo $output > state.json
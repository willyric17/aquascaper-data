lastmaster=$(basename "$(ls plant/master | sort | tail -n1)" .json)
updates=$(ls plant/update | sort)

first=1
for f in $updates; do
    if [ $first -eq 1 ]; then
        new_update="$(basename "$f" .json)"
        first=0
    else
        new_update="$new_update,$(basename "$f" .json)"
    fi
done

output="{\"master\":$lastmaster,\"updates\":[$new_update]}"

echo $output > plant/state.json
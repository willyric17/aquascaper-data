jsons=$(find . -name '*.json')

for json in $jsons; do
    jq -c . $json > "$json.tmp";
    rm $json;
    mv "$json.tmp" $json;
done

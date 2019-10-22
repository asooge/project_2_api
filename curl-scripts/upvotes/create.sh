curl "http://localhost:4741/upvotes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "upvote": {
      "value": "'"${VALUE}"'",
      "meme_id": "'"${MEME_ID}"'"
    }
  }'

echo

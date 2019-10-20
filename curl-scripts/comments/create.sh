curl "http://localhost:4741/comments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "comment": {
      "message": "'"${MESSAGE}"'",
      "meme_id": "'"${MEME_ID}"'"
    }
  }'

echo

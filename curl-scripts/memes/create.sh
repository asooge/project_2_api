curl "http://localhost:4741/memes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "meme": {
      "image": "'"${IMAGE}"'",
      "text_1": "'"${TEXT_1}"'",
      "font_size_1": "'"${FONT_1}"'",
      "text_2": "'"${TEXT_2}"'",
      "font_size_2": "'"${FONT_2}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo

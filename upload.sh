source ./upload.local.sh
lessc "src/color-scheme/breeze-auto.less" > breeze.css && curl http://localhost:37840/etapi/notes/$NOTE_ID/content \
  --header "Authorization: $ETAPI_TOKEN" \
  --header "Content-Type: text/plain" \
  --upload-file breeze.css

if [ $? -eq 0 ]; then
  echo "Upload successful. Refresh Trilium to see the updated theme."
else
  echo "Upload failed."
fi
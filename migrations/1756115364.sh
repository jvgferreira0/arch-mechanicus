echo "Replace buggy native Zoom client with webapp"

if mechanicus-pkg-present zoom; then
  mechanicus-pkg-drop zoom
  mechanicus-webapp-install "Zoom" https://app.zoom.us/wc/home https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/png/zoom.png
fi


IP=$(curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url)

echo "$IP"

cat>URL.js<< EOF
const URL="$IP";
EOF

git add .
git commit -m "update URL"
git push

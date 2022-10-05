
IP=$(curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url)

echo "$IP"

cat>URL.js<< EOF
const URL="$IP\\auth-sign-in?appUri=%2F";
EOF

git add .
git commit -m "update URL"
git push

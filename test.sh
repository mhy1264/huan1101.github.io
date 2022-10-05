
IP=$(curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url)

echo "$IP"

cat>url.txt<< EOF
const URL="$IP";
EOF

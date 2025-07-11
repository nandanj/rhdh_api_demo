BEARER_TOKEN="foobarbaz"
API_BASE_URL="https://api.cluster-zkmpx.zkmpx.sandbox2151.opentlc.com:6443"
curl -k -X POST "$API_BASE_URL/api/orchestrator/v2/workflows/create-ocp-namespace-swt/execute" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $BEARER_TOKEN" \
  --data @payload.json


API_BASE_URL="https://backstage-backstage.apps.cluster-tvwbg.tvwbg.sandbox1943.opentlc.com"
BEARER_TOKEN="foobarbaz"
HOST="gitlab-gitlab.apps.cluster-tvwbg.tvwbg.sandbox1943.opentlc.com"

# query the workflow create-ocp-namespace-swt
# curl -k -X GET "$API_BASE_URL/api/orchestrator/v2/workflows/create-ocp-namespace-swt/overview" \
#   -H "Content-Type: application/json" \
#   -H "Authorization: Bearer $BEARER_TOKEN"

# execute a workflow for creating a namespace
curl -k -X POST "$API_BASE_URL/api/orchestrator/v2/workflows/create-ocp-namespace-swt/execute" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $BEARER_TOKEN" \
  -d '{
        "namespace": "dev1-small-5",
        "requester": "dev1",
        "size": "small",
        "reason": "Need a small namespace for project X",
        "recipients": [
        "user:default/dev1"
        ]
      }'
#         "templateRef": "template:default/quarkus-web-template-api-compat-gitlab",
#         "values": {
#           "component_id": "my-gamma-test",
#           "description": "simple Quarkus app",
#           "group_id": "qgroup",
#           "artifact_id": "qartifact",
#           "java_package_name": "com.redhat.rhdh",
#           "image_registry": "Quay",
#           "image_host": "quay.apps.cluster-tvwbg.tvwbg.sandbox1943.opentlc.com",
#           "image_tag": "latest",
#           "destination": "dev1/wells-demo",
#           "repo": {
#             "host": "'"$HOST"'",
#             "owner": "rhdh"
#           },
#           "username": "dev1"
#         },
#         "secrets": {
#           "image_password": "MTY1MjU0"
#         }
#       }'

# get all tasks
 # curl -k -X GET "$API_BASE_URL/api/scaffolder/v2/tasks" \
 #   -H "Content-Type: application/json" \
 #   -H "Authorization: Bearer $BEARER_TOKEN"

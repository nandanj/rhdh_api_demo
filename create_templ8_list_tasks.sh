
# API_BASE_URL = "https://route-backstage-internal-backstage.apps.cluster-h8p9j.h8p9j.sandbox1517.opentlc.com" # <<< IMPORTANT: Replace with your actual API base URL

# BEARER_TOKEN = "sha256~jMzs7HdcWd_IAmh5FasJsLHGbnnJFu6Ky8ldjvxWlbI" # <<< IMPORTANT: Replace with your actual Bearer Token
BEARER_TOKEN="foobarbaz"

#API_BASE_URL="https://backstage-backstage.apps.cluster-tvwbg.tvwbg.sandbox1943.opentlc.com"
API_BASE_URL="https://backstage-backstage.apps.cluster-zkmpx.zkmpx.sandbox2151.opentlc.com"

#HOST="gitlab-gitlab.apps.cluster-tvwbg.tvwbg.sandbox1943.opentlc.com"
HOST="gitlab-gitlab.apps.cluster-zkmpx.zkmpx.sandbox2151.opentlc.com

"

# create a template for the quarkus web app
curl -k -X POST "$API_BASE_URL/api/scaffolder/v2/tasks" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $BEARER_TOKEN" \
  -d '{
        "templateRef": "template:default/quarkus-web-template-api-compat-gitlab",
        "values": {
          "component_id": "f1-test",
          "description": "simple Quarkus app",
          "group_id": "qgroup",
          "artifact_id": "qartifact",
          "java_package_name": "com.redhat.rhdh",
          "image_registry": "Quay",
          "image_host": "quay.apps.cluster-zkmpx.zkmpx.sandbox2151.opentlc.com",
          "image_tag": "latest",
          "destination": "dev1/wells-demo",
          "repo": {
            "host": "gitlab-gitlab.apps.cluster-zkmpx.zkmpx.sandbox2151.opentlc.com",
            "owner": "rhdh"
          },
          "username": "dev1"
        },
        "secrets": {
          "image_password": "MjEwOTM1"
        }
      }'

# get all tasks
 # curl -k -X GET "$API_BASE_URL/api/scaffolder/v2/tasks" \
 #   -H "Content-Type: application/json" \
 #   -H "Authorization: Bearer $BEARER_TOKEN"

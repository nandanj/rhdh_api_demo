# API_BASE_URL = "https://route-backstage-internal-backstage.apps.cluster-h8p9j.h8p9j.sandbox1517.opentlc.com" # <<< IMPORTANT: Replace with your actual API base URL
# BEARER_TOKEN = "sha256~jMzs7HdcWd_IAmh5FasJsLHGbnnJFu6Ky8ldjvxWlbI" # <<< IMPORTANT: Replace with your actual Bearer Token
API_BASE_URL="https://backstage-backstage.apps.cluster-tvwbg.tvwbg.sandbox1943.opentlc.com" 
BEARER_TOKEN="foobarbaz"


# curl -k -X POST "$API_BASE_URL/api/scaffolder/v2/tasks" \
#   -H "Content-Type: application/json" \
#   -H "Authorization: Bearer $BEARER_TOKEN" \
#   -d '{
#     "templateRef": "template:default/template-quarkus-simple",
#     "values": {
#       "firstName": "nandan",
#       "lastName": "joshi",
#       "username": "wfuser",
#       "personalAccessToken": "_EXAMPLE", 
#       "nexusUsername": "n_EXAMPLE", 
#       "nexusPassword": "nx_pwd_EXAMPLE"
#     },
#     "secrets": {
#       "personalAccessToken": "_EXAMPLE",
#       "nexusUsername": "n_EXAMPLE",
#       "nexusPassword": "nx_pwd_EXAMPLE"
#     }
#   }'

# create a template for the quarkus web app
curl -k -X POST "$API_BASE_URL/api/scaffolder/v2/tasks" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $BEARER_TOKEN" \
  -d '{
        "templateRef": "template:default/quarkus-web-template-api-compat-gitlab",
        "values": {
          "component_id": "wf-q-comp",
          "java_package_name": "com.redhat.rhdh",
          "image_registry": "OpenShift",
          "destination": "dev1/wf-q_comp",
          "repo": {
            "host": "gitlab-gitlab.apps.cluster-tvwbg.tvwbg.sandbox1943.opentlc.com",
            "owner": "rhdh"
          },
          "username": "dev1"
        }
      }'

# get all tasks
# curl -k -X GET "$API_BASE_URL/api/scaffolder/v2/tasks" \
#   -H "Content-Type: application/json" \
#   -H "Authorization: Bearer $BEARER_TOKEN"

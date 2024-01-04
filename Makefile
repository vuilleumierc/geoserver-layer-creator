GIT_REPO=https://raw.githubusercontent.com/geoserver/geoserver/
GEOSERVER_VERSION=2.24.1
SPEC_PATH=/src/community/rest-openapi/openapi/src/main/resources/org/geoserver/rest/openapi/1.0.0/
lib/openapi/styles.yaml: SPEC_FILE=styles.yaml
lib/openapi/layers.yaml: SPEC_FILE=layers.yaml
lib/openapi/featuretypes.yaml: SPEC_FILE=featuretypes.yaml

lib/openapi/styles.yaml:
	curl $(GIT_REPO)$(GEOSERVER_VERSION)$(SPEC_PATH)$(SPEC_FILE) -o lib/openapi/$(SPEC_FILE)

lib/openapi/layers.yaml:
	curl $(GIT_REPO)$(GEOSERVER_VERSION)$(SPEC_PATH)$(SPEC_FILE) -o lib/openapi/$(SPEC_FILE)

lib/openapi/featuretypes.yaml:
	curl $(GIT_REPO)$(GEOSERVER_VERSION)$(SPEC_PATH)$(SPEC_FILE) -o lib/openapi/$(SPEC_FILE)

PHONY: fetch-spec

fetch-spec: lib/openapi/featuretypes.yaml lib/openapi/layers.yaml lib/openapi/styles.yaml

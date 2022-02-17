


SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMP_DIR=$(mktemp -d -t crd-ref-docs-XXXXX)
DEFAULT_ARGS=(--log-level=ERROR --output-path="${SCRIPT_DIR}/out")
CRD_REF_DOC=${SCRIPT_DIR}/crd-ref-docs
OUT_DIR=$(builtin cd $SCRIPT_DIR/..; pwd)
echo ${OUT_DIR}

# AppStudio
git clone --depth 1 https://github.com/redhat-appstudio/application-service.git ${TEMP_DIR}/application-service
${CRD_REF_DOC} --log-level=ERROR --config=${SCRIPT_DIR}/config.yaml --output-path=${OUT_DIR}/ref/application-service.md --renderer markdown --source-path=${TEMP_DIR}/application-service/api/v1alpha1

git clone --depth 1 https://github.com/redhat-appstudio/service-provider-integration-operator.git ${TEMP_DIR}/service-provider
${CRD_REF_DOC} --log-level=ERROR --config=${SCRIPT_DIR}/config.yaml --output-path=${OUT_DIR}/ref/service-provider.md --renderer markdown --source-path=${TEMP_DIR}/service-provider/api/v1beta1

git clone --depth 1 https://github.com/redhat-appstudio/managed-gitops.git ${TEMP_DIR}/managed-gitops
${CRD_REF_DOC} --log-level=ERROR --config=${SCRIPT_DIR}/config.yaml --output-path=${OUT_DIR}/ref/gitops.md --renderer markdown --source-path=${TEMP_DIR}/managed-gitops/backend/apis/managed-gitops/v1alpha1

# KCP 
git clone --depth 1 https://github.com/kcp-dev/kcp.git ${TEMP_DIR}/kcp
${CRD_REF_DOC} --log-level=ERROR --config=${SCRIPT_DIR}/config.yaml --output-path=${OUT_DIR}/ref/kcp.md --renderer markdown --source-path=${TEMP_DIR}/kcp/pkg/apis
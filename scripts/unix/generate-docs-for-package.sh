# IMPORTANT: This script should be executed in the context of packages.

DOCS_DIR="../../generated_docs/packages"

NAME=$(node -p "require('./package.json').name")
VERSION=$(node -p "require('./package.json').version")

mkdir -p "${DOCS_DIR}/${NAME}/${VERSION}"

cp -r docs/* "${DOCS_DIR}/${NAME}/${VERSION}"

echo "Created: ${DOCS_DIR}/${NAME}/${VERSION}"
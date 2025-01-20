# IMPORTANT: This script should be executed in the context of packages.

DOCS_DIR="../../generated_docs/packages"

PACKAGE_DOCS_DIR="docs-package"
VERSION_DOCS_DIR="docs-version"

NAME=$(node -p "require('./package.json').name")
VERSION=$(node -p "require('./package.json').version")

PACKAGE_DOCS_PATH="${DOCS_DIR}/${NAME}/package"
VERSION_DOCS_PATH="${DOCS_DIR}/${NAME}/${VERSION}"

mkdir -p $PACKAGE_DOCS_PATH
mkdir -p $VERSION_DOCS_PATH

cp -r "${PACKAGE_DOCS_DIR}/*" $PACKAGE_DOCS_PATH

cp -r "${VERSION_DOCS_DIR}/*" $VERSION_DOCS_PATH

echo "Created docs for ${NAME}"
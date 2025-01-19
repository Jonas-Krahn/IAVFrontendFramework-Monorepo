# This script should be executed inside the main folder

DOCS_DIR="generated_docs"
PACKAGES_DOCS_DIR="${DOCS_DIR}/packages"

if [! -d $DOCS_DIR ]; then
    mkdir -p $DOCS_DIR
fi

if [! -d $PACKAGES_DOCS_DIR ]; then
    mkdir -p $PACKAGES_DOCS_DIR
fi

cp -r docs/* $DOCS_DIR
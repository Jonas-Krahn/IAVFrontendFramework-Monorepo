# This script should be executed inside the main folder

DOCS_DIR="generated_docs"
PACKAGES_DOCS_DIR="${DOCS_DIR}/packages"

mkdir -p $DOCS_DIR

mkdir -p $PACKAGES_DOCS_DIR

# Copy the entry point docs to generated_docs
cp -r docs/* $DOCS_DIR

#cd $DOCS_DIR
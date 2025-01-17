NAME=$(node -p "require('./package.json').name")
echo "PACKAGE_NAME=$NAME" >> $GITHUB_ENV

VERSION=$(node -p "require('./package.json').version")
echo "PACKAGE_VERSION=$VERSION" >> $GITHUB_ENV

echo "PACKAGE_DOCS_FOLDER=${NAME}_${VERSION}" >> $GITHUB_ENV

mkdir -p generated_docs/$PACKAGE_DOCS_FOLDER

echo "!!!!!!!!! generated_docs/$PACKAGE_DOCS_FOLDER"

cp -r docs/* generated_docs/$PACKAGE_DOCS_FOLDER
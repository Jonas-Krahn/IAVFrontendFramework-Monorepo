NAME=$(node -p "require('./package.json').name")
echo "PACKAGE_NAME=$NAME" >> $GITHUB_ENV

VERSION=$(node -p "require('./package.json').version")
echo "PACKAGE_VERSION=$VERSION" >> $GITHUB_ENV

echo "PACKAGE_DOCS_FOLDER=$NAME _ $VERSION" >> $GITHUB_ENV

if [ -d "$PACKAGE_DOCS_FOLDER" ]; then
    rm -rf $PACKAGE_DOCS_FOLDER
    echo "Deleted existing folder $PACKAGE_DOCS_FOLDER"
fi

mkdir -p $PACKAGE_DOCS_FOLDER

cp -r docs/* $PACKAGE_DOCS_FOLDER
git add $PACKAGE_DOCS_FOLDER
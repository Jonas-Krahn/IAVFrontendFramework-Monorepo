NAME=$(node -p "require('./package.json').name")
echo "PACKAGE_NAME=$NAME" >> $GITHUB_ENV

VERSION=$(node -p "require('./package.json').version")
echo "PACKAGE_VERSION=$VERSION" >> $GITHUB_ENV

mkdir -p "../../generated_docs/${NAME}/${VERSION}"

echo "../../generated_docs/${NAME}/${VERSION}"

cp -r docs/* "../../generated_docs/${NAME}/${VERSION}"
# This script should be executed in the context of packages.
NAME=$(node -p "require('./package.json').name")

VERSION=$(node -p "require('./package.json').version")

mkdir -p "../../generated_docs/packages/${NAME}/${VERSION}"

cp -r docs/* "../../generated_docs/packages/${NAME}/${VERSION}"

echo "Created: ../../generated_docs/packages/${NAME}/${VERSION}"
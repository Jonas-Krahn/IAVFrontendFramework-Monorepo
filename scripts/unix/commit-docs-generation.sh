#!/bin/bash
# Set the main directory
MAIN_DIR="main"
GENERATED_DOCS_DIR="$MAIN_DIR/generated_docs"

# Iterate through all package folders in generated_docs
for PACKAGE_DIR in "$GENERATED_DOCS_DIR"/*; do
  if [ -d "$PACKAGE_DIR" ]; then # Ensure it's a directory
    PACKAGE_NAME=$(basename "$PACKAGE_DIR")

    # Iterate through all version folders in the package directory
    for VERSION_DIR in "$PACKAGE_DIR"/*; do
      if [ -d "$VERSION_DIR" ]; then # Ensure it's a directory
        VERSION_NAME=$(basename "$VERSION_DIR")

        # Create the root package directory if it doesn't exist
        ROOT_PACKAGE_DIR="$MAIN_DIR/$PACKAGE_NAME"
        mkdir -p "$ROOT_PACKAGE_DIR"

        # Copy the version folder to the root package directory, overwriting if necessary
        cp -r "$VERSION_DIR" "$ROOT_PACKAGE_DIR/$VERSION_NAME"
      fi
    done
  fi
done

if [ -d "root_docs" ]; then
    rm -rf root_docs
    echo "Deleted existing root_docs"
fi

mkdir root_docs

cp -r main/docs/* root_docs/

rm -rf ./main

git add .
git commit -m "chore: Deploy updated documentation"
git push origin gh-pages
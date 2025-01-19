#!/bin/bash

# Define source and destination directories
SOURCE_DIR="main/generated_docs/packages/"
DEST_DIR="generated_docs/packages/"

 Iterate over scope directories in the source folder
for scope in "$SOURCE_DIR"/*; do
    if [ -d "$scope" ]; then
        scope_name=$(basename "$scope")
        
        # Create the scope folder in the destination if it doesn't exist
        mkdir -p "$DEST_DIR/$scope_name"

        # Iterate over packages within the scope
        for package in "$scope"/*; do
            if [ -d "$package" ]; then
                package_name=$(basename "$package")
                
                # Create the package folder in the destination if it doesn't exist
                mkdir -p "$DEST_DIR/$scope_name/$package_name"

                # Copy version folders, overwriting existing ones
                for version in "$package"/*; do
                    if [ -d "$version" ]; then
                        version_name=$(basename "$version")
                        echo "Copying $SOURCE_DIR/$scope_name/$package_name/$version_name to $DEST_DIR/$scope_name/$package_name/"
                        cp -r "$SOURCE_DIR/$scope_name/$package_name/$version_name" "$DEST_DIR/$scope_name/$package_name/"
                    fi
                done
            fi
        done
    fi
done

#mkdir root_docs

#cp -r main/docs/* root_docs/

rm -rf main

git add .
git commit -m "chore: Deploy updated documentation"
git push origin gh-pages
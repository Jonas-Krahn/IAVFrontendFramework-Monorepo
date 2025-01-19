#!/bin/bash

# Define source and destination directories
#SOURCE_DIR="main/generated_docs"
#DEST_DIR="generated_docs"

# Iterate over scope directories in the source folder
#for scope in "$SOURCE_DIR"/*; do
#    if [ -d "$scope" ]; then
#        scope_name=$(basename "$scope")
#        
#        # Create the scope folder in the destination if it doesn't exist
#        mkdir -p "$DEST_DIR/$scope_name"
#
#        # Iterate over packages within the scope
#        for package in "$scope"/*; do
#            if [ -d "$package" ]; then
#                package_name=$(basename "$package")
#                
#                # Create the package folder in the destination if it doesn't exist
#                mkdir -p "$DEST_DIR/$scope_name/$package_name"
#
#                # Copy version folders, overwriting existing ones
#                for version in "$package"/*; do
#                    if [ -d "$version" ]; then
#                        version_name=$(basename "$version")
#                        echo "Copying $SOURCE_DIR/$scope_name/$package_name/$version_name to $DEST_DIR/$scope_name/$package_name/"
#                        cp -r "$SOURCE_DIR/$scope_name/$package_name/$version_name" "$DEST_DIR/$scope_name/$package_name/"
#                    fi
#                done
#            fi
#        done
#    fi
#done

# Define the source directory
SOURCE_DIR="main/generated_docs"

# Ensure the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Directory $SOURCE_DIR does not exist."
    exit 1
fi

# Initialize an empty array to store package paths
npm_packages=()

# Find all package.json files and store their parent directory paths in the array
while IFS= read -r package_file; do
    package_dir=$(dirname "$package_file")
    npm_packages+=("$package_dir")
done < <(find "$SOURCE_DIR" -type f -name "package.json")

# Print all npm package paths stored in the array
echo "Identified npm package paths:"
for package in "${npm_packages[@]}"; do
    echo "$package"
done

#mkdir root_docs

#cp -r main/docs/* root_docs/

rm -rf main

git add .
git commit -m "chore: Deploy updated documentation"
git push origin gh-pages
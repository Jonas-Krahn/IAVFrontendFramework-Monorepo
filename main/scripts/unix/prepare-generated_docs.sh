# This script should be executed inside the main folder
if [! -d "generated_docs" ]; then
    mkdir -p generated_docs
fi

cp -r docs/* generated_docs
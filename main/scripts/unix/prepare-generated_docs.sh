# This script should be executed inside the main folder
if [ -d "generated_docs" ]; then
    rm -rf generated_docs
    echo "Deleted existing generated docs in main"
fi

mkdir -p generated_docs

cp -r docs/* generated_docs
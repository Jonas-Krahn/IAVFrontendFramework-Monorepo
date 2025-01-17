git branch -r

if [ -d "generated_docs" ]; then
    rm -rf generated_docs
    echo "Deleted existing generated docs"
fi

mkdir -p generated_docs/root

cp -r docs/* generated_docs/root
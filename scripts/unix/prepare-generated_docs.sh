if [ -d "generated_docs" ]; then
    rm -rf generated_docs
    echo "Deleted existing generated docs"
    mkdir generated_docs
fi

cp -r docs/* generated_docs/root
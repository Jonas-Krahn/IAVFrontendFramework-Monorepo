git fetch origin

if ! git rev-parse --verify origin/gh-pages; then
    git checkout -b feature/new-feature
    git push -u origin feature/new-feature
    git branch -r
    echo "Created new gh-pages branch."
else
    git checkout gh-pages
    git merge main
    # Use all files from main in case of conflict
    git checkout --theirs .
    git add .
    echo "Merged main to existing gh-pages branch."
fi

# Need to make scripts runnable again since they 
chmod +x scripts/unix/*

git branch
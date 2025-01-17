git fetch origin

if ! git rev-parse --verify origin/gh-pages; then
    git branch gh-pages
fi

git checkout gh-pages

git merge main
# Use all files from main in case of conflict
git checkout --theirs .
git add .

chmod +x scripts/unix/*
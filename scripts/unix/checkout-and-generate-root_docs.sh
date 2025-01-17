git config --global user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git config --global user.name "${GITHUB_ACTOR}"

git fetch origin

if git rev-parse --verify origin/gh-pages; then
    git checkout gh-pages
else
    git checkout --orphan gh-pages
    git rm -rf .
    echo "Initialized gh-pages branch" > README.md
    git add README.md
    git commit -m "Initialize gh-pages branch"
    git push origin gh-pages
fi

git checkout main -- docs/
git checkout main -- packages/

if [ -d "root_docs" ]; then
    rm -rf root_docs
    echo "Deleted root docs"
fi

cp -r docs/* root_docs
git add root_docs
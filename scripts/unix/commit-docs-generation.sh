#if [ -n "$(ls -A docs/ 2>/dev/null)" ]; then
#    rm -rf docs/*
#    git add docs/
#    echo "Removed old docs content"
#fi
#
#rm -rf packages/*
#
git commit -m "chore: Deploy updated documentation"
git push origin gh-pages
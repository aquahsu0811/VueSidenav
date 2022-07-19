set -e

cd dist
git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/aquahsu0811/VueSidenav.git master:gh-pages
cd -
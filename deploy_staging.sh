# move into dir created when running deploy_setup.sh
cd measure-g-staging

# delete a previously created staging GitHub pages branch on GitHub
git push origin :gh-pages

# locally remove any existing files on the branch
git rm -rf .

# compile the source files in the parent folder (measure-g repo)
harp compile ../ ./

# add and commit all the files on the gh-pages branch, push it up to GitHub for hosting
git add -A
git commit -m "$(date +%m-%d-%Y_%H:%M:%S) staging deploy"
git push origin gh-pages
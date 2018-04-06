#!/bin/bash -eux

# rationale: Realiza un commit a la rama gh-pages con la documentación
# link: https://gist.github.com/willprice/e07efd73fb7f13f917ea

# rationale: Se genera token desde http://github.com/settings/tokens con
# permisos de accesos a repositorios públicos.
# /usr/lib64/ruby/gems/2.1.0/gems/travis-1.8.8/bin/travis encrypt GH_TOKEN="secretvalue_github_token"
# link: https://docs.travis-ci.com/user/environment-variables/
add_repo() {
  #rm -rf ${REMOTE_REPO_NAME} # repo never exists in travis
  REMOTE_REPO_SLUG="$REMOTE_REPO_OWNER/$REMOTE_REPO_NAME"
  git clone -b gh-pages --depth 10 https://github.com/${REMOTE_REPO_SLUG}
  pushd ${REMOTE_REPO_NAME}
  # GH_ADMINAGENCIAIMPL_ACCESS_TOKEN is stablished in travis interface as private env var
  git remote add origin-pages https://${GH_ADMINAGENCIAIMPL_ACCESS_TOKEN}@github.com/${REMOTE_REPO_SLUG}.git > /dev/null 2>&1
  git pull origin-pages gh-pages
  popd
}

add_files() {
  pushd ${REMOTE_REPO_NAME}
  cp -r ../en/_build/ en
  cp -r ../es/_build/ es
  git add .
  git commit --all --message "Travis build: $TRAVIS_BUILD_NUMBER, Commit: $TRAVIS_COMMIT, Remote Repo: https://github.com/$TRAVIS_REPO_SLUG"
  popd
}

upload_files() {
  git push --quiet --set-upstream origin-pages gh-pages
}

add_repo
add_files
upload_files

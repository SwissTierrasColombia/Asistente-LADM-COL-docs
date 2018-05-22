#!/bin/bash -eux

# rationale: Realiza un commit a la rama gh-pages con la documentación
# link: https://gist.github.com/willprice/e07efd73fb7f13f917ea

# rationale: Se genera token desde http://github.com/settings/tokens con
# permisos de accesos a repositorios públicos.
# /usr/lib64/ruby/gems/2.1.0/gems/travis-1.8.8/bin/travis encrypt GH_TOKEN="secretvalue_github_token"
# link: https://docs.travis-ci.com/user/environment-variables/
REMOTE_REPO_SLUG="$REMOTE_REPO_OWNER/$REMOTE_REPO_NAME"

add_repo() {
  rm -rf ${REMOTE_REPO_NAME} # repo never exists in travis
  git clone -b gh-pages --depth 10 https://github.com/${REMOTE_REPO_SLUG}
  pushd ${REMOTE_REPO_NAME}
  # GH_ADMINAGENCIAIMPL_ACCESS_TOKEN is stablished in travis interface as private env var
  git remote add origin-pages https://${GH_ADMINAGENCIAIMPL_ACCESS_TOKEN}@github.com/${REMOTE_REPO_SLUG}.git > /dev/null 2>&1
  git pull origin-pages gh-pages
  popd
}

add_files() {
  pushd ${REMOTE_REPO_NAME}
  # rationale: scan all available languages
  for lang_path in $(ls -d ../src/build/*)
  do
    lang=$(basename $lang_path)
    rm -rf $lang
    cp -r "$lang_path/html" "$lang"
  done
  git add .
  git commit -m "Travis build: $TRAVIS_BUILD_NUMBER, Commit: $TRAVIS_COMMIT, Remote Repo: https://github.com/$REMOTE_REPO_SLUG"
  popd
}

upload_files() {
  pushd ${REMOTE_REPO_NAME}
  git push -u origin-pages gh-pages
  popd
}

make_zip() {
  mkdir asistente_ladm_col_docs
  # rationale: scan all available languages
  for lang_path in $(ls -d src/build/*)
  do
    lang=$(basename $lang_path)
    # rationale: use only branch 'master' because is the current?
    branch=${TRAVIS_BRANCH}
    cp -r "$lang_path/html/$branch" "$TRAVIS_BUILD_DIR/asistente_ladm_col_docs/$lang"
  done
  zip -r asistente_ladm_col_docs_$lang.zip asistente_ladm_col_docs/$lang
}

add_repo
add_files
upload_files
make_zip

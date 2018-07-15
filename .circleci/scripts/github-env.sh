# Configure the GitHub Oauth token if it is available
if [ -n "$GITHUB_TOKEN" ] ; then
  composer -n config --global github-oauth.github.com $GITHUB_TOKEN
fi

# Set up our default git config settings.
git config --global user.email "$GIT_EMAIL"
git config --global user.name "Circle CI"
git config --global core.fileMode false

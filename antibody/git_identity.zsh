# pretty_git.zsh

GEOMETRY_GIT_IDENTITY_SIGNED_SYMBOL=${GEOMETRY_GIT_IDENTITY_SIGNED_SYMBOL:-"🔒"}

geometry_prompt_git_identity_setup() {
  :
}

geometry_prompt_git_identity_check() {
  # Do nothing if we're not in a repository
  [ -d $PWD/.git ] || return 1
}


geometry_prompt_git_identity_render() {
  if signingkey=$(git config "user.signingkey") ; then
    echo "${GEOMETRY_GIT_SEPARATOR} ${GEOMETRY_GIT_IDENTITY_SIGNED_SYMBOL} $(git config user.identity)"
  else
    echo "${GEOMETRY_GIT_SEPARATOR} $(git config user.identity)"
  fi
}

geometry_plugin_register git_identity

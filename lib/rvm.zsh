# get the name of the branch we are on
function rvm_prompt_info() {
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null) || return
  if [[ "$ruby_version" == "" ]]; then
    ruby_version="system ruby"
  fi

  echo "$ruby_version"
}



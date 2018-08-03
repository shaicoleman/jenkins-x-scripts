#!/bin/bash
[[ "$(uname)" == "Darwin" ]] && alias xdg-open=open
xdg-open https://github.com/settings/tokens/new?scopes=repo,read:user,read:org,user:email,write:repo_hook,delete_repo

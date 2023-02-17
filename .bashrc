WORKSPACE_ROOT=/workspace/gitpod-dummy

shopt -s histappend
export PROMPT_COMMAND="history -a;history -c;history -r;$PROMPT_COMMAND"
export GIT_EDITOR=nano

export PATH="$WORKSPACE_ROOT/bin:$PATH"

export CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain sunday --domain-owner 575319961431 --query authorizationToken --output text`

rm -rf ~/.vscode-server-insiders/extensions && ln -s $WORKSPACE_ROOT/.vscode-server-insiders/extensions ~/.vscode-server-insiders/extensions
rm -rf ~/.vscode-server-insiders/data && ln -s $WORKSPACE_ROOT/.vscode-server-insiders/data ~/.vscode-server-insiders/data

ln -s $WORKSPACE_ROOT/id_ed25519 ~/.ssh/id_ed25519 && ln -s $WORKSPACE_ROOT/id_ed25519.pub ~/.ssh/id_ed25519.pub

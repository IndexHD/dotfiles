zimfw() { source /home/ludwig/.zim/zimfw.zsh "${@}" }
zmodule() { source /home/ludwig/.zim/zimfw.zsh "${@}" }
fpath=(/home/ludwig/.zim/modules/git/functions /home/ludwig/.zim/modules/utility/functions /home/ludwig/.zim/modules/prompt-pwd/functions /home/ludwig/.zim/modules/git-info/functions /home/ludwig/.zim/modules/zsh-completions/src ${fpath})
autoload -Uz -- git-alias-lookup git-branch-current git-branch-delete-interactive git-branch-remote-tracking git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw prompt-pwd coalesce git-action git-info
source /home/ludwig/.zim/modules/environment/init.zsh
source /home/ludwig/.zim/modules/git/init.zsh
source /home/ludwig/.zim/modules/input/init.zsh
source /home/ludwig/.zim/modules/termtitle/init.zsh
source /home/ludwig/.zim/modules/utility/init.zsh
source /home/ludwig/.zim/modules/minimal/minimal.zsh-theme
source /home/ludwig/.zim/modules/completion/init.zsh
source /home/ludwig/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/ludwig/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
source /home/ludwig/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh

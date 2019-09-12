# git-all

Would you like to work on another machine but you forgot to push your changes? Use **git-all** and forget about it.

## How can this help me be more productive?

Gather all your repositories in one place and push/pull them with single command. This will save you some time going from one repo to another (or frustration when you forget to push something when working on other machine).

## Howto

 1. Write down all your repositories in *pull.txt* (to pull them only), *push.txt* (to push) or *common.txt* (to push & pull them with a single command).
 2. Run `bash pull.sh`, `bash push.sh` or `bash git-all.sh` (which does both). Respond to each prompt, if you want to pull/push your current branch with `y` or `n`. You can stop at every moment with `q`.
 3. (Optional) For ease of use, you can create alias, for example `alias git-all='bash /path/to/git-all.sh'`, then simply run `git-all` and forget about all the repositories you need to update.
 
 ## Update
 
 Run `git pull` in this repository. Files with your repositories are listed in *.gitignore*, so they won't be overwritten.
 
 ## Contributions
 
 Contributions are very welcome. Check out roadmap for ideas.
 
 ## Roadmap
 
  1. Silent mode - disable prompt for every repository to push.
  2. Possibility to pass environmental variables (`$HOME` etc) to repositories files.
  3. Prepare cool demo using for example [terminalizer](https://github.com/faressoft/terminalizer).

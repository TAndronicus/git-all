# push

Would you like to work on another machine but you forgot to push your changes? Use **push** and forget about it.

## Howto

 1. Write down all your repositories in *repositories.txt*. Line by line.
 2. Run `bash push.sh`. Respond to each prompt, if you want to push your current branch with `y` or `n` if you don't want to publish your changes. You can stop at every moment with `q`.
 3. (Optional) For ease of use, you can create alias, for example `alias push='bash /path/to/push.sh'`, then simply run `push` and forget about all the repositories you need to update.
 
 ## Contributions
 
 Contributions are very welcome. Check out roadmap for ideas.
 
 ## Roadmap
 
  1. Silent mode - disable prompt for every repository to push.
  2. Possibility to pass environmental variables (`$HOME` etc) to *repositories.txt*.
  3. Prepare cool demo using for example [terminalizer](https://github.com/faressoft/terminalizer).
  4. Equivalent script for `git pull` to keep repostories up-to-date.

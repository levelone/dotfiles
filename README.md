# How to Install
To include submodules run:

```
cd ~/.
git clone --recurse-submodules https://github.com/levelone/dotfiles.git .
```

To confirm submodules run:

```
git submodule init & git submodule update
```

# Others
To add submodules run:

```
cd ~/.vim/bundle & git submodule add <git_repo>
```

To remove submodules run:

* Delete the relevant section from the .gitmodules file.
* Stage the .gitmodules changes git add .gitmodules
* Delete the relevant section from .git/config.
* Run git rm --cached path_to_submodule (no trailing slash).
* Run rm -rf .git/modules/path_to_submodule (no trailing slash).
* Commit git commit -m "Removed submodule "
* Delete the now untracked submodule files rm -rf path_to_submodule

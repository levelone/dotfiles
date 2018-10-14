# How to Install
To include submodules run:

```
cd ~/.
git clone --recurse-submodules https://github.com/levelone/dotfiles.git .
```

To confirm submodules run:

```
git submodules init & git submodules update
```

To add submodules run:

```
cd ~/.vim/bundle & git submodule add <git_repo>
```

To remove submodules run:

```
cd ~/.vim/bundle & git submodule rm <git_repo>
```

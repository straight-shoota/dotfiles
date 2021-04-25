# dotfiles
My dotfiles

# Setup

```console
$ cd $HOME
$ alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
$ mkdir .dotfiles
$ dotfiles init
Initialized empty Git repository in /home/johannes/.dotfiles/
$ dotfiles remote add origin git@github.com:straight-shoota/dotfiles.git
$ rm .bashrc .profile
$ dotfiles pull origin master
$ dotfiles branch -u origin/master master
```

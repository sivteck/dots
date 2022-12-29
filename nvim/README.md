TODO
----
1. Figure out a way to automate installation of dependencies
```
# for JS
npm install -g typescript typescript-language-server diagnostic-languageserver eslint_d

# for Ruby
gem install solargraph
gem install solargraph-rails
gem install debug 
gem install neovim
gem install ripper-tags

# for Go
brew install gopls
brew install delve

# additional deps
brew install ripgrep
brew install fd
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```
2. Generalize config directory instead of,
```
ln -s $HOME/projects/dots/nvim $HOME/.config/
```
3. Setup LuaSnip

## Random things

1. `rtp` for runtime paths
2. `ap` around paragraphs
3. `ripper-tags -R --exclude=vendor` for generating ruby ctags

### References:
1. https://github.com/nanotee/nvim-lua-guide
2. https://github.com/martinsione/dotfiles


# My Atom configuration

```bash
cd ~
git clone https://github.com/felipebueno/dotfiles
cd dotfiles
stow atom
```

Install the Atom packages by running:

```
apm install --packages-file ~/.atom/package-list
```

If you add or update an Atom package, update the `package-list` file:

```
apm list --installed --bare > ~/.atom/package-list
```

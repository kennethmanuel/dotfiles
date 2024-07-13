<!-- TODO: add this to stowignore -->

can't use stow for this

do it on /etc/keyd/default.conf

```
stow -t /etc/keyd keyd
sudo systemctl enable keyd && sudo systemctl start keyd
```

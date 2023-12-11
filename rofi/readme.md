open rofi filebrowser

```sh
rofi -show filebrowser
```

<!-- TODO: open rofi filebrowser in specified directory -->

```sh
selected=find ~/projects/personal ~/projects/work ~/projects/github -mindepth 1 -maxdepth 1 -type d | fzf
```

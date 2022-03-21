# Votabru's chezmoi state

See [chezmoi](https://www.chezmoi.io/)

## Bootstrap

Prerequisite for [brew](https://brew.sh/) to be installed.
**Note** this is for `macOS` 


```shell
curl --proto "=https" --tlsv1.2 -sSf "https://raw.githubusercontent.com/votabru/chezmoi-state/.bootstrap.sh" | bash
```

With chezmoi [config file](https://www.chezmoi.io/reference/configuration-file/)

```shell
mkdir -p ~/.config/chezmoi
curl --proto "=https" --tlsv1.2 -sSf "https://raw.githubusercontent.com/votabru/chezmoi-state/.config-template.toml" -o ~/.config/chezmoi/chezmoi.toml
curl --proto "=https" --tlsv1.2 -sSf "https://raw.githubusercontent.com/votabru/chezmoi-state/.bootstrap.sh" | bash
```
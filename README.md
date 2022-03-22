# Votabru's chezmoi state

See [chezmoi](https://www.chezmoi.io/)

## Bootstrap

Prerequisite for [brew](https://brew.sh/) to be installed.
**Note** this is for `macOS` 


```shell
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/votabru/chezmoi-state/master/.bootstrap.sh)"
```

With chezmoi [config file](https://www.chezmoi.io/reference/configuration-file/)

```shell
mkdir -p ~/.config/chezmoi
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/votabru/chezmoi-state/master/..config-template.toml)" -o ~/.config/chezmoi/chezmoi.toml
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/votabru/chezmoi-state/master/.bootstrap.sh)"
```
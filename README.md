# About

A Zsh plugin to check if a domain is online.

## Installation

### Oh My Zsh

1. Clone the repository inside your `~/.oh-my-zsh/custom/plugins` directory:

    ```sh
    git clone https://github.com/itsgg/zsh-isup.git ~/.oh-my-zsh/custom/plugins/zsh-isup
    ```

2. Activate the plugin in your `.zshrc` file:

    ```sh
    plugins=(... zsh-isup)
    ```

3. Restart your terminal.

## Usage

```sh
isup <domain>
```

### Examples

```sh
isup itsgg.com # itsgg.com is up.
```

```sh
isup detoolbox.com # detoolbox.com is down.
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

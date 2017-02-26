# WP-Salts-Update-CLI

`WPSUCLI` downloads new salts from the WP API and replaces them with the ones in your wp-config.php file for every site on your server.

## ⚡️ Installation

Open command line terminal (I prefer iTerm2) and run the following command.

```bash
sudo wget -qO wpsucli https://git.io/vykgu && sudo chmod +x ./wpsucli && sudo install ./wpsucli /usr/local/bin/wpsucli
```

This command will perform the following actions:

- Use sudo permissions
- Use wget to download `WPSUCLI` and rename it to `wpsucli` 
- Make the `wpsucli` executable
- Install `wpsucli` inside /usr/local/bin/ folder.

## 🙌 Usage

Just run 'wpsucli' and it will update the salts for every wp-config.php file on your server or PC.

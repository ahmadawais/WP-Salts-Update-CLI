<table width="100%">
    <tr>
        <td align="left" width="100%" colspan="2">
            <strong>WP-Salts-Update-CLI</strong><br />
            Updates salts in every wp-config.php file on your server.
        </td>
    </tr>
    <tr>
        <td>
            A FOSS (Free & Open Source Software) project. Maintained by @AhmadAwais.
        </td>
        <td align="center">
            <a href="https://AhmadAwais.com/">
                <img src="https://i.imgur.com/Asg4d3k.png" width="100" />
            </a>
        </td>
    </tr>
</table>


`WPSUCLI` downloads new salts from the WP API and replaces them with the ones in your wp-config.php file for every site on your server.

# ⚡️ Getting Set Up

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

- Just run `wpsucli` and it will update the salts for every `wp-config.php` file on your server or PC.
- If you are running it on your server then run it from the root folder i.e. `cd /` and then run `wpsucli`

If for some reason the script doesn't work, you might want to check what is the output of this command 
`find . -name wp-config.php -print` this command should print the paths for all the wp-config.php files present inside your current directory or directories within it. If it doesn't display the paths, then you're probably at the wrong folder E.g. `cd ~` or `/root` — so just  `cd /` and then run `wpsucli`.

## 🎯 Changelog

### Version 1.0.0 2017-02-26
- First version.

---

### 🙌 [THEDEVCOUPLE PARTNERS](https://TheDevCouple.com/partners)

This open source project is maintained by the help of awesome businesses listed below. What? [Read more about it →](https://TheDevCouple.com/partners)

<table width='100%'>
	<tr>
		<td width='500'><a target='_blank' href='https://kinsta.com/?kaid=WMDAKYHJLNJX&utm_source=TheDevCouple&utm_medium=Partner'><img src='https://on.ahmda.ws/73cedc/c' /></a></td>
		<td width='500'><a target='_blank' href='https://ahmda.ws/USES_WPE?utm_source=TheDevCouple&utm_medium=Partner'><img src='https://on.ahmda.ws/ff40fe/c' /></a></td>
	</tr>
	<tr>
		<td width='500'><a target='_blank' href='https://mythemeshop.com/?utm_source=TheDevCouple&utm_medium=Partner'><img src='https://on.ahmda.ws/3166d9/c' /></a></td>
		<td width='500'><a target='_blank' href='https://ipapi.co/?utm_source=TheDevCouple&utm_medium=Partner'><img src='https://d2ddoduugvun08.cloudfront.net/items/1R190r2U0p3N3L0U0b2u/ip-api.png'/></a></td>
	</tr>
</table>

<br />
<br />
<p align="center">
<strong>For anything else, tweet at <a href="https://twitter.com/MrAhmadAwais/" target="_blank" rel="noopener noreferrer">@MrAhmadAwais</a></strong>
</p>

<div align="center">
	<p>I have released a video course to help you become a better developer — <a href="https://VSCode.pro/?utm_source=GitHubFOSS" target="_blank">Become a VSCode Power User →</a></p>
    <br />
  <a href="https://VSCode.pro/?utm_source=GitHubFOSS" target="_blank">
  <img src="https://raw.githubusercontent.com/ahmadawais/shades-of-purple-vscode/master/images/vscodeproPlay.jpg" /><br>VSCode</a>

  _<small><a href="https://VSCode.pro/?utm_source=GitHubFOSS" target="_blank">VSCode Power User Course →</a></small>_
</div>



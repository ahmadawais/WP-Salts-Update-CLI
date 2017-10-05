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
`find . -name wp-config.php -print` this command should print the paths for all the wp-config.php files present inside your current directory or directories within it. If it doesn't display the paths, then you're probably at the wrong folder E.g. `cd ~` or `/root` — so just  `cd /` and then run `wpsucli`.

## 🎯 Changelog

### Version 1.0.0 2017-02-26
- First version.

---
### 🙌 [WPCOUPLE PARTNERS](https://WPCouple.com/partners):
This open source project is maintained by the help of awesome businesses listed below. What? [Read more about it →](https://WPCouple.com/partners)

<table width='100%'>
    <tr>
        <td width='225'><a target='_blank' href='https://www.gravityforms.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrE/c' /></a></td>
        <td width='225'><a target='_blank' href='https://kinsta.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu5O/c' /></a></td>
        <td width='225'><a target='_blank' href='https://wpengine.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mto3/c' /></a></td>
        <td width='225'><a target='_blank' href='https://www.sitelock.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtyZ/c' /></a></td>
    </tr>
    <tr>
        <td width='225'><a target='_blank' href='https://wp-rocket.me/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrv/c' /></a></td>
        <td width='225'><a target='_blank' href='https://blogvault.net/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtph/c' /></a></td>
        <td width='225'><a target='_blank' href='http://cridio.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtmy/c' /></a></td>
        <td width='225'><a target='_blank' href='http://wecobble.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtrW/c' /></a></td>
    </tr>
    <tr>
        <td width='225'><a target='_blank' href='https://www.cloudways.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu0C/c' /></a></td>
        <td width='225'><a target='_blank' href='https://www.cozmoslabs.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu9W/c' /></a></td>
        <td width='225'><a target='_blank' href='https://wpgeodirectory.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtwv/c' /></a></td>
        <td width='225'><a target='_blank' href='https://www.wpsecurityauditlog.com/?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtkh/c' /></a></td>
    </tr>
    <tr>
        <td width='225'><a target='_blank' href='https://www.liquidweb.com//?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mtnt/c' /></a></td>
        <td width='225'><a target='_blank' href='https://WPCouple.com/contact?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu3F/c' /></a></td>
        <td width='225'><a target='_blank' href='https://WPCouple.com/contact?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu3F/c' /></a></td>
        <td width='225'><a target='_blank' href='https://WPCouple.com/contact?utm_source=WPCouple&utm_medium=Partner'><img src='http://on.ahmda.ws/mu3F/c' /></a></td>
    </tr>
</table>


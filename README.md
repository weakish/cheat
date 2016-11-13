cheat
=====

A [cheat.rb][] clone in shell (use git repo to store cheatsheets).

[cheat.rb]: http://cheat.errtheblog.com

It uses git repository instead of central website to store cheat-sheets.

[![xkcd1168]](http://xkcd.com/1168/)

[xkcd1168]: http://imgs.xkcd.com/comics/tar.png "xkcd commic 1168 tar bomb"


Install
-------

    git clone git://github.com/weakish/cheat.git
    cd cheat
    # edit config.mk to suit your needs
    make

### Uninstall

    cd cheat
    make uninstall

Usage
-----

    cheat cheat

Or [view it online](https://github.com/weakish/cheat/wiki/cheat).

Cheat-sheets
----------

All cheat-sheets are stored in this git-based [wiki](https://github.com/weakish/cheat/wiki) hosted on GitHub too.

You can use your own git repository of cheat-sheets. Just edit this
line of `Rakefile.rb`:

```ruby
cheatsheet_repo_url = 'git://your-git-repository'
```

All cheat-sheets are licensed under 0BSD, the same license of cheat shell scripts.

Contribute
----------

Fork and send pull requests.

Report issues.

Submit and edit cheatsheets in the following ways:

- Fork the wiki repo and send pull requests, just like its code.
- Edit the wiki through web.
- Edit the wiki through GitHub api.

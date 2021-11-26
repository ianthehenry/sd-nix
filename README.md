# `sd nix`

Some helper scripts that make it a little easier to use Nix.

I wrote them to use with [`sd`, a tool for wrangling scripts](https://github.com/ianthehenry/sd). But they're just bash scripts, so they don't really *need* `sd` to work.

The individual scripts are motivated during my blog series [*How to Learn Nix*](https://ianthehenry.com/posts/how-to-learn-nix/). Specifically:

- `sd nix info`: [Switching from Homebrew to Nix](https://ianthehenry.com/posts/how-to-learn-nix/switching-from-homebrew-to-nix/)
- `sd nix diff`: [Setting up a declarative user environment](https://ianthehenry.com/posts/how-to-learn-nix/declarative-user-environment/)
- `sd nix sync`: [Setting up a declarative user environment](https://ianthehenry.com/posts/how-to-learn-nix/declarative-user-environment/)
- `sd nix shell`: [Saving your shell](https://ianthehenry.com/posts/how-to-learn-nix/saving-your-shell/)
- `sd nix install`: Okay, this one isn't really explained on the blog, and I don't ever really actually use it beacuse of `diff` and `sync` above, but it was written to avoid some of the problems described in [How to install Python](https://ianthehenry.com/posts/how-to-learn-nix/python3-alpha/).

# Installation

Clone this repo into your [`~/sd` directory](https://ianthehenry.com/posts/sd-my-script-directory/) as `~/sd/nix`, and then you can run `sd nix info` at your heart's discretion.

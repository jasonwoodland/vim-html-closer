# vim-html-closer

Automatically close HTML tags in Vim.

Closes HTML tags automatically when pressing return after an opening tag:

```html
<html>⏎
```

becomes: (vertical bar is cursor position)

```html
<html>
    |
</html>
```

Closes tags by typing `</` in insert mode:

```html
<button>Button</
```

becomes:

```html
<button>Button</button>
```

## Installation

If you have [pathogen](https://github.com/tpope/vim-pathogen) installed, simply copy and paste:

    cd ~/.vim/bundle
    git clone git://github.com/jasonwoodland/vim-html-closer.git


# Zapf, a Hugo theme for fans of Hermann Zapf.

Zapf is a minimalistic theme designed for blogs.  It uses Palatino
(TeXGyre Pagella), Zapf Chancery (TeXGyre Chorus) and Iosevka as
fonts.  [See it in action!](https://guemax.de)

This theme is based on [Typo](https://github.com/tomfran/typo) by
Francesco Tomaselli.

## Installation

***Note**: I created this theme for my personal usage, therefore I may
(and probably will) modify it in ways only suiting me.  I do not
recommend you to use this theme unless you are willing to fiddle
around with it from time to time.*

After having read the previous warning carefully and having understood
the consequences, you may add this theme to your hugo project with the
following command:

```
git submodule add git@github.com:guemax/zapf.git themes/zapf
```

## Configuration example

### post.md

```
---
title: "Search Engine in Rust"
date: "2024-02-01"
summary: "A search engine overview and Rust implementation."
toc: true 
readTime: true
autonumber: true
math: true
---

Your content...
```

### hugo.toml

```toml
baseURL = 'https://example.org/'
languageCode = 'en-us'
title = 'Title'
theme = 'Typo'

[params]
# Math mode
math = true

# Intro on main page, content in markdown:
homeIntroContent = """
Join me on this journey as I explore the ever-evolving landscape of software engineering, 
fueled by curiosity and a relentless drive to innovate. 
Together, let's push the boundaries of what's possible and craft solutions that shape the future.
"""

# Collection to display on home page: 
# in this case we would display content/posts pages
homeCollectionTitle = 'Posts'
homeCollection = 'posts'

# Pagination size across all website, this is the same for homepage and single list page
paginationSize = 100

# Syntax highligth on code blocks, all styles: 
# https://xyproto.github.io/splash/docs/all.html
# I suggest algol
[markup]
[markup.highlight]
style = 'algol'
```

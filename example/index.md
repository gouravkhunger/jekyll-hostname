---
layout: base
---

# Jekyll::Hostname

[![Gem Version](https://img.shields.io/gem/v/jekyll-hostname)][ruby-gems]
[![Gem Total Downloads](https://img.shields.io/gem/dt/jekyll-hostname)][ruby-gems]

[ruby-gems]: https://rubygems.org/gems/jekyll-hostname

A jekyll plugin to grab the hostnames from a URL, meaning

- `https://google.com` becomes `google.com`
- `http://github.com` becomes `github.com`
- `https://github.com/gouravkhunger/jekyll-hostname` becomes `github.com`

This gem was originally authored to be used as a custom plugin for the [static site](https://github.com/genicsblog/genicsblog.github.io) of [genicsblog.com](https://genicsblog.com)

## Installation

Add this line to your application's Gemfile inside the `jekyll_plugins` group:

```ruby
group :jekyll_plugins do
    # other gems
    gem "jekyll-hostname"
end
```

Then, enable the plugin by adding it to the `plugins` section in the `_config.yml` file:

```yaml
plugins:
    # - other plugins
    - jekyll-hostname
```

And then execute:

```shell
bundle install
```

## Usage

This plugin is essentially a filter and works on any [valid URL string](https://en.wikipedia.org/wiki/URL#Syntax) provided inside a liquid tag. Use it as below:

```liquid
{% raw %}{% assign host = site.url | hostname %}
{% assign domain = post.source | hostname %}{% endraw %}
```

The `hostname` filter extracts the root domain from the given url string(here `site.url` or `page.source`)

For example, for the following code:

```liquid
{% raw %}{% assign domain = site.url | hostname %}
{% assign host = "https://genicsblog.com/author/gouravkhunger/" | hostname %}{% endraw %}
```

the output for `{% raw %}{{ domain }}{% endraw %}` and `{% raw %}{{ host }}{% endraw %}` will be:

```bash
{% assign domain = site.url | hostname %}{{ domain }} # {% raw %}{{ domain }}{% endraw %}
{% assign host = "https://genicsblog.com/author/gouravkhunger/" | hostname %}{{ host }} # {% raw %}{{ host }}{% endraw %}
```

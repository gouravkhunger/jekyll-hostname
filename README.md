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
{% assign host = site.url | hostname %}
{% assign domain = post.source | hostname %}
```

The `hostname` filter extracts the root domain from the given url string(here `site.url` or `page.source`)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

```
MIT License

Copyright (c) 2021 Gourav Khunger

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

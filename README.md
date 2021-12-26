# Jekyll::Hostname

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

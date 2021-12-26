Gem::Specification.new do |spec|
  spec.name = "jekyll-hostname"
  spec.version = "1.0.3"
  spec.authors = ["Gourav Khunger"]
  spec.email = ["gouravkhunger18@gmail.com"]

  spec.summary = "A Jekyll plugin that provides a liquid filter to extract the hostname from a URL."
  spec.homepage = "https://github.com/gouravkhunger/jekyll-hostname"
  spec.license = "MIT"

  s.required_ruby_version = ">= 2.4.0"

  spec.add_dependency "jekyll"
  spec.add_dependency "uri"
end

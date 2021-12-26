Gem::Specification.new do |spec|
  spec.name = "jekyll-hostname"
  spec.version = "1.0.2"
  spec.required_ruby_version = '>= 2.0.0'  # Same as Jekyll
  spec.authors = ["Gourav Khunger"]
  spec.email = ["gouravkhunger18@gmail.com"]

  spec.summary = "A Jekyll gem that provides a liquid filter to extract the hostname from a URL."
  spec.homepage = "https://github.com/gouravkhunger/jekyll-hostname"
  spec.license = "MIT"

  spec.add_runtime_dependency "jekyll"
  spec.add_runtime_dependency "uri"
end

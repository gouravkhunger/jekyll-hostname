Gem::Specification.new do |spec|
  spec.name = "jekyll-hostname"
  spec.version = "1.0.1"
  spec.required_ruby_version = '>= 2.0.0'  # Same as Jekyll
  spec.authors = ["Gourav Khunger"]
  spec.email = ["gouravkhunger18@gmail.com"]

  spec.summary = "A Jekyll gem that provides a liquid filter to extract the hostname from a URL."
  spec.homepage = "https://github.com/gouravkhunger/jekyll-hostname"
  spec.license = "MIT"

  spec.add_runtime_dependency "jekyll", ">= 3.0"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.4"
end

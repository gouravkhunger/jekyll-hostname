Gem::Specification.new do |spec|
  spec.name = "jekyll-hostname"
  spec.version = "1.0.6"
  spec.authors = ["Gourav Khunger"]
  spec.email = ["gouravkhunger18@gmail.com"]

  spec.summary = "A Jekyll plugin that provides a liquid filter to extract the hostname from a URL."
  spec.homepage = "https://github.com/gouravkhunger/jekyll-hostname"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|spec|features)/!)  }
  spec.require_paths = ['lib']
  spec.required_ruby_version = ">= 2.4.0"

  spec.add_dependency "jekyll"
end

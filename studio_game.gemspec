Gem::Specification.new do |spec|
  spec.name        = "studio_game"
  spec.version     = "1.0.0"
  spec.author      = "Alex van den Berg"
  spec.email       = "alexvdberg010109@gmail.com"
  spec.summary     = "Ruby course program"
  spec.homepage    = "https://github.com/alex-dev742/studio_game"
  spec.license     = "MIT"

  spec.files       = Dir["{bin,lib}/**/*"] + %w[LICENSE.txt README.md]
  spec.executables = ["studio_game"]

  spec.required_ruby_version = ">= 3.2.0"
end
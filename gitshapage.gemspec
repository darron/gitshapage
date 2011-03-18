Gem::Specification.new do |s|
  s.name              = "gitshapage"
  s.version           = "0.0.5"
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Creates a page located in the public directory with the git SHA of the release after a Capistrano deploy."
  s.homepage          = "http://github.com/darron/gitshapage"
  s.email             = "darron@froese.org"
  s.authors           = [ "Darron Froese" ]
  s.has_rdoc          = false

  s.files             = %w( README.md LICENSE.md )
  s.files            += Dir.glob("lib/**/*")

  s.add_dependency    "capistrano", ">= 2"

  s.description = <<description
Creates a page located in the public directory with the git SHA of the release after a Capistrano deploy.
description
end
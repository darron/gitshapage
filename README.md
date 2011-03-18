Creates a page located at /version.txt with the git SHA of the release after a Capistrano deploy.

That's all it does.

If you're using bundler - put this in your Gemfile:

`gem "gitshapage", "0.0.3", :require => false`

Put this in your config/deploy.rb:

`require "gitshapage"`

After deploy:restart it will create the page.

Don't put it in your Rails config/environment.rb - that does bad things.
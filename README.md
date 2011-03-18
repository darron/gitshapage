Creates a page located in the public directory with the git SHA of the release after a Capistrano deploy.

That's all it does.

If you're using bundler - put this in your Gemfile:

`gem "gitshapage", "0.0.5", :require => false`

Put this in your config/deploy.rb:

`require "gitshapage"`

`set :gitshapage_url, 'put-your-page-name-here.txt'`

After deploy:restart it will create the page.

Don't put it in your Rails config/environment.rb - that does bad things.
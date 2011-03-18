Creates a page located in the public directory with the git SHA of the release after a Capistrano deploy.

That's all it does.

If you're using bundler - put this in your Gemfile:

`gem "gitshapage", "0.0.6", :require => false`

Put this in your config/deploy.rb:

`require "gitshapage"`

After deploy:restart it will create the page - by default it puts it at public/version.txt.

If you'd like to put or name it something different:

`set :gitshapage_directory, "directory/goes/here"`

`set :gitshapage_url, "filename-goes-here.txt"`

NOTE: Don't put it in your Rails config/environment.rb - that does bad things.
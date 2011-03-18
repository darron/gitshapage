Capistrano::Configuration.instance(:must_exist).load do
  _cset(:gitshapage_url) { abort "Please specify the name of your gitshapage_url, set :gitshapage_url, 'foo.txt'" }
  task :gitshapage do
    run "cd #{deploy_to}/current && git rev-parse HEAD > 'public/#{gitshapage_url}'"
  end
  after "deploy:restart", :gitshapage
end
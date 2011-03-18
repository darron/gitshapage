Capistrano::Configuration.instance(:must_exist).load do
  _cset(:gitshapage_url) { "version.txt" }
  _cset(:gitshapage_directory) { "public" }
  task :gitshapage do
    run "cd #{deploy_to}/current && git rev-parse HEAD > '#{gitshapage_directory}/#{gitshapage_url}'"
    run "cd #{deploy_to}/current && date >> '#{gitshapage_directory}/#{gitshapage_url}'"
  end
  after "deploy:restart", :gitshapage
end
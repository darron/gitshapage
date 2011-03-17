Capistrano::Configuration.instance(:must_exist).load do
  task :gitshapage do
    run "cd #{deploy_to}/current && git rev-parse HEAD > #{File.join(current_path,'public','version.txt')}"
  end
  after "deploy:restart", :gitshapage
end
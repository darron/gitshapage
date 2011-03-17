Capistrano::Configuration.instance(:must_exist).load do
  task :version_page do
    run "cd #{deploy_to}/current && git rev-parse HEAD > #{File.join(current_path,'public','version.txt')}"
  end
  after "deploy:restart", :version_page
end
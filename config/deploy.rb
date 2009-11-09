default_run_options[:pty] = true

# be sure to change these
set :user, 'wipeitout'
set :domain, 'wipeitout.com.au'
#set :application, 'wipeitout'

# the rest should be good
set :repository,  "git@github.com:wipeitout/wipeitout.git"
set :deploy_to, "/home/#{user}/#{domain}"
set :deploy_via, :remote_cache
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web
role :db, domain, :primary => true

namespace :deploy do

  desc "Tell Passenger to restart the app."
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end

  desc "Symlink shared configs and folders on each release."
  task :symlink_shared do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end

end

after 'deploy:update_code', 'deploy:symlink_shared'
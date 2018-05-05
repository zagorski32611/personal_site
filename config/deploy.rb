# config valid for current version and patch releases of Capistrano
lock "~> 3.10.2"

set :application, "JoesOnlineResume"
set :repo_url, "https://github.com/zagorski32611/personal_site"

set :scm, :git
set :repository,  "master"
set :deploy_via, :copy
# Default deploy_to directory is /var/www/my_app_name
set :user, :deploy
set :rails_env, "production"
set :deploy_to, "/var/www/joezagorskidev.com"
set :use_sudo, true
set :ssh_options, { :forward_agent => true }
set :keep_releases 
#default_tasks[:pty] = true
#role :web, "joezagorskidev.com"
#role :app, "joezagorskidev.com"
#role :db, "joezagorskidev.com", :primary => true
#server "www.joezagorskidev.com" #, roles: %w{web app db}, :primary => true

# namespace :deploy do
#     task :start do ; end
#     task :stop do ; end
#     task :restart, :roles => :app, :except => { :no_release => true } do
#      run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#     end
#   end
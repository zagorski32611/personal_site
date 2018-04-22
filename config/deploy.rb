# config valid for current version and patch releases of Capistrano
lock "~> 3.10.2"

set :application, "Joe's Online Resume"
set :repo_url, "https://github.com/zagorski32611/personal_site"

set :scm, :git
set :repository,  "."
set :deploy_via, :copy
# Default deploy_to directory is /var/www/my_app_name
set :user, :deploy
set :deploy_to, "/var/www/joezagorskidev.com"
set :use_sudo, false
role :web, "joezagorskidev.com"
role :app, "joezagorskidev.com"
role :db, "joezagorskidev.com", :primary => true

namespace :deploy do
    task :start do ; end
    task :stop do ; end
    task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    end
  end
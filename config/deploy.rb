set :application, 'simple_calorie_tracker'
set :repo_url, 'https://github.com/barhamd/simple_calorie_tracker.git'

set :deploy_to, "/home/sct/simple_calorie_tracker"

set :branch, "master"

set :scm, :git
set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/assets}

set :rvm_type, :user
set :rvm_ruby_version, '2.1.1'

set :rails_env, 'production'

set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  after :finishing, 'deploy:cleanup'

end

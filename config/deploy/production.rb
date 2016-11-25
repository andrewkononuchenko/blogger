set :deploy_to, '/home/rails/fly_mama'
set :tmp_dir, "/home/rails/tmp"

server '46.101.216.40', user: 'root', roles: %w{app web db}

namespace :deploy do

  task :restart do
    on roles(:all) do
      execute 'service unicorn restart'
    end
  end

  after :publishing, 'deploy:restart'

end
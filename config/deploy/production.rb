set :deploy_to, "/home/wangzhen/www/rails3_1_1_blog/"

role :app, "173.255.253.214"
role :web, "173.255.253.214"
role :db,  "173.255.253.214", :primary => true

namespace :mod_rails do
  desc <<-DESC
  Restart the application altering tmp/restart.txt for mod_rails.
  DESC
  task :restart, :roles => :app do
    run "touch  #{File.join(deploy_to, current_dir)}/tmp/restart.txt"
run "cp /home/wangzhen/www/rails3_1_1_blog/database.yml /home/wangzhen/www/rails3_1_1_blog/current/config/."
#    run "ln -s  /home/wangzhen/www/kagome/production/rails/shared/system /home/wangzhen/www/kagome/production/rails/current/system"
#    run "ln -s  /home/wangzhen/www/kagome/production/rails/data /home/wangzhen/www/kagome/production/rails/current/public/data"

  end
end

namespace :deploy do
  %w(start restart).each { |name| task name, :roles => :app do mod_rails.restart end }
  %w(start restart).each { |name| task name, :roles => :app do mod_rails.restart end }
end

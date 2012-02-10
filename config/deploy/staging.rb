set :deploy_to, "/home/wangzhen/www/rails3_1_1_blog/"
#set :deploy_to, "/home/cerahs/www/html/MT3/cerahbulle_demo"
role :app, "173.255.253.214"
role :web, "173.255.253.214"
role :db,  "173.255.253.214", :primary => true

namespace :mod_rails do
  desc <<-DESC
  Restart the application altering tmp/restart.txt for mod_rails.
  DESC
  task :restart, :roles => :app do
    run "cp /home/wangzhen/www/rails3_1_1_blog/database.yml /home/wangzhen/www/rails3_1_1_blog/current/config/."
    #    run '/home/wangzhen/.rvm/rubies/ruby-1.9.2-p290/bin/ruby /home/wangzhen/.rvm/gems/ruby-1.9.2-p290@rails3.1/bin/passenger start -p 3002 -d'
    #    run "touch  #{File.join(deploy_to, current_dir)}/tmp/restart.txt"
    run 'sh -x /home/wangzhen/www/rails3_1_1_blog/stop.sh'
  end
end

namespace :deploy do
  %w(start restart).each { |name| task name, :roles => :app do mod_rails.restart end }
  %w(start restart).each { |name| task name, :roles => :app do mod_rails.restart end }
end

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

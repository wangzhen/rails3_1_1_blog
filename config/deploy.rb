set :stages, %w(staging production)
set :default_stage, "staging"
require 'capistrano/ext/multistage'
set :scm, "git"
set :use_sudo, false
set :runner, "kembo"
set :keep_releases, 5
set :deploy_via, :export

set :repository,  "git://github.com/wangzhen/rails3_1_1_blog.git"

#set :user do Capistrano::CLI.ui.ask('SSH User: ') end
set :user, "wangzhen"
#set :password do Capistrano::CLI.password_prompt('SSH Password: ') end
set :password, 'hfchfc888'

#set :scm_user do Capistrano::CLI.ui.ask('SVN User: ') end
#set :scm_user, "wangzhen"
##set :scm_password do Capistrano::CLI.password_prompt('SVN Password: ') end
#set :scm_password, 'hfchfc888'


#run 'rvm use 1.9.2@rails3.1'
#run 'cd  /home/wangzhen/www/rails3_1_1_blog/current'
#run 'passenger  stop --pid-file /home/wangzhen/www/rails3_1_1_blog/releases/20120209062734/tmp/pids/passenger.3002.pid'
#set :scm_prefer_prompt, true
#git remote add origin git@github.com:wangzhen/test.git
#git add days.txt
#git status
#git commit -m "Refactor to simplify" some-file
#git push -u origin master
#    server {
#	listen 80;
#	server_name blog.haofeicui.com ;
#
#	location / {
#            proxy_pass http://127.0.0.1:3002;
#		       	}
#	}
#	rvm use 1.9.2@rails3.1
#passenger  stop --pid-file /home/wangzhen/www/rails3_1_1_blog/releases/20120209062734/tmp/pids/passenger.3000.pid
#netstat -tlnp | grep 3002

#
#轻叶落吻   15:54:13
#sudo gem install mysql -- --with-mysql-config=/usr/local/mysql/bin/mysql_config
#install libmysqlclient15-dev
#yum install mysql-devel
#yum install gcc nmap kernel-devel bison openssl-devel
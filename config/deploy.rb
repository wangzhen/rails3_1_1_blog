set :stages, %w(staging production)
set :default_stage, "staging"
require 'capistrano/ext/multistage'
set :scm, "git"
set :use_sudo, false
set :runner, "kembo"
set :keep_releases, 5
set :deploy_via, :export

set :repository,  "git://github.com/wangzhen/rails3_1_1_blog.git"

set :user do Capistrano::CLI.ui.ask('SSH User: ') end
#set :user, '<ssh_user>'
set :password do Capistrano::CLI.password_prompt('SSH Password: ') end
#set :password, "<ssh_password>"

#set :scm_user do Capistrano::CLI.ui.ask('SVN User: ') end
set :scm_user, "kembo"
#set :scm_password do Capistrano::CLI.password_prompt('SVN Password: ') end
set :scm_password, 'fjwoe83nf'
#set :scm_prefer_prompt, true

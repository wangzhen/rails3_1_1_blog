# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

require 'active_record/fixtures'
#             rake db:init_tables
#Dir['db/fixtures/*.{rb,yml}'].each do |file|
#  Fixtures.create_fixtures('db/fixtures',File.basename(file,'.*'))
#end
Administrator.create({:name => 'admin' , :password => 'admin' ,:password_confirmation => 'admin'})

10.times { |i|
  c = Category.create(:name => "category#{i}")
  10.times { |i2|
    Blog.create(
      :title => "blog_name#{i}_#{i2}" ,
      :category_id => c.id ,
      :content => "content#{i}_#{i2}"
    )
  }
}


Rake::Task['annotate'].invoke
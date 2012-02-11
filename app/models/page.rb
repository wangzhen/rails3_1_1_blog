# == Schema Information
#
# Table name: pages
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Page < ActiveRecord::Base

     before_save  :del_style
  def del_style
#    self.content = self.content.delete('<link href="/assets/style.css" media="screen" rel="stylesheet" type="text/css" />')
  end
end

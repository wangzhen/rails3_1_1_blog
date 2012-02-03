# == Schema Information
#
# Table name: categories
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  parent_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base

  has_many :blogs

  def self.root
    Category.where('parent_id' => nil)
  end

  def children
    Category.where('parent_id' => self.parent_id)
  end

end


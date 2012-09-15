# == Schema Information
#
# Table name: categories
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  parent_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#  sequ       :integer(4)      default(1)
#

class Category < ActiveRecord::Base

  has_many :blogs

 default_scope :order => 'sequ desc'

  def self.root
    Category.where('parent_id' => nil)
  end

  def children
    Category.where(:parent_id => self.id)
  end

end


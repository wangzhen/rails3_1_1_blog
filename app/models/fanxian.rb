# == Schema Information
#
# Table name: fanxians
#
#  id                  :integer(4)      not null, primary key
#  kaishi              :string(255)
#  password            :string(255)
#  jieshu              :string(255)
#  qq                  :string(255)
#  zhifubao            :string(255)
#  message             :string(255)
#  remarks             :string(255)
#  image1_file_name    :string(255)
#  image1_content_type :string(255)
#  image1_file_size    :integer(4)
#  image1_updated_at   :datetime
#  image2_file_name    :string(255)
#  image2_content_type :string(255)
#  image2_file_size    :integer(4)
#  image2_updated_at   :datetime
#  image3_file_name    :string(255)
#  image3_content_type :string(255)
#  image3_file_size    :integer(4)
#  image3_updated_at   :datetime
#  image4_file_name    :string(255)
#  image4_content_type :string(255)
#  image4_file_size    :integer(4)
#  image4_updated_at   :datetime
#  created_at          :datetime
#  updated_at          :datetime
#

class Fanxian < ActiveRecord::Base



  has_attached_file :image1,  
      :url => "/system/fanxian/image1/:id/:style.:extension",
      :path => ":rails_root/public/system/fanxian/image1/:id/:style.:extension"
  has_attached_file :image2,  
          :url => "/system/fanxian/image2/:id/:style.:extension",
          :path => ":rails_root/public/system/fanxian/image2/:id/:style.:extension"
  has_attached_file :image3,  
          :url => "/system/fanxian/image3/:id/:style.:extension",
          :path => ":rails_root/public/system/fanxian/image3/:id/:style.:extension"
  has_attached_file :image4,  
          :url => "/system/fanxian/image4/:id/:style.:extension",
          :path => ":rails_root/public/system/fanxian/image4/:id/:style.:extension"



end

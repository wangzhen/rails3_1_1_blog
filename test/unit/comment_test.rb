# == Schema Information
#
# Table name: comments
#
#  id         :integer(4)      not null, primary key
#  blog_id    :integer(4)
#  email      :string(255)
#  qq         :string(255)
#  name       :string(255)
#  content    :text
#  ip         :string(255)
#  is_check   :boolean(1)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

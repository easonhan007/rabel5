# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  content          :text(65535)
#  user_id          :integer
#  commentable_type :string(255)
#  commentable_id   :integer
#  posting_device   :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

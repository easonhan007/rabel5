# == Schema Information
#
# Table name: followings
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  followed_user_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Following < ApplicationRecord
  belongs_to :follower, :class_name => 'User', :foreign_key => 'user_id'
  belongs_to :followed_user, :class_name => 'User'
end

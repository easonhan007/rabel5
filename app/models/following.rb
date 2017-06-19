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
  belongs_to :user
end
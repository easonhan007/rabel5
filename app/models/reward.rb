# == Schema Information
#
# Table name: rewards
#
#  id            :integer          not null, primary key
#  admin_user_id :integer
#  user_id       :integer
#  amount        :integer
#  balance       :integer
#  reason        :text(65535)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Reward < ApplicationRecord
  belongs_to :user
end

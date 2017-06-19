# == Schema Information
#
# Table name: notifications
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  notifiable_type :string(255)
#  notifiable_id   :integer
#  content         :text(65535)
#  action_user_id  :integer
#  action          :string(255)
#  unread          :boolean          default(TRUE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Notification < ApplicationRecord
  belongs_to :user
end

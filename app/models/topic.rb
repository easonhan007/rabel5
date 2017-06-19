# == Schema Information
#
# Table name: topics
#
#  id              :integer          not null, primary key
#  node_id         :integer
#  user_id         :integer
#  title           :string(255)
#  content         :text(65535)
#  hit             :integer
#  involved_at     :datetime
#  comments_count  :integer          default(0)
#  comments_closed :boolean          default(FALSE)
#  sticky          :boolean          default(FALSE)
#  last_replied_by :string(255)      default("")
#  last_replied_at :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Topic < ApplicationRecord
  belongs_to :node
  belongs_to :user
end

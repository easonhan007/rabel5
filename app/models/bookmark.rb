# == Schema Information
#
# Table name: bookmarks
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  bookmarkable_type :string(255)
#  bookmarkable_id   :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :bookmarkable, :polymorphic => true

  validates :user_id, :bookmarkable_type, :bookmarkable_id, :presence => true
end

# == Schema Information
#
# Table name: accounts
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  personal_website :string(255)
#  location         :string(255)
#  signature        :string(255)
#  introduction     :text(65535)
#  weibo_link       :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Account < ApplicationRecord
  belongs_to :user
  validates :signature, :length => {:maximum => 20}

  before_create :set_default_value

  private
    def set_default_value
      self.personal_website ||= ''
      self.location ||= ''
      self.signature ||= ''
      self.introduction ||= ''
    end

end

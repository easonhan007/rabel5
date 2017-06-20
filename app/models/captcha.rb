# == Schema Information
#
# Table name: captchas
#
#  id         :integer          not null, primary key
#  key        :string(255)
#  code       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Captcha < ApplicationRecord
  def self.generate_key
    Digest::SHA1.hexdigest(['captcha', Time.now.to_s].join)
  end

end

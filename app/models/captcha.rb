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
end

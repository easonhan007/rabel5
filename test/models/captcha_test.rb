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

require 'test_helper'

class CaptchaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

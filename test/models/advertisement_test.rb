# == Schema Information
#
# Table name: advertisements
#
#  id          :integer          not null, primary key
#  link        :string(255)
#  title       :string(255)
#  banner      :string(255)
#  words       :string(255)
#  start_date  :date
#  expire_date :date
#  duration    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AdvertisementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

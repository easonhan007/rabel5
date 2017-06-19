# == Schema Information
#
# Table name: cloud_files
#
#  id           :integer          not null, primary key
#  content_type :string(255)
#  file_size    :integer
#  asset        :string(255)
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class CloudFileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

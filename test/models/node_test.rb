# == Schema Information
#
# Table name: nodes
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  key          :string(255)
#  introduction :string(255)
#  custom_html  :text(65535)
#  position     :integer
#  topics_count :integer
#  quiet        :boolean
#  custom_css   :text(65535)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  plane_id     :integer
#

require 'test_helper'

class NodeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

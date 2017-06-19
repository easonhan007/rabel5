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
#

class Node < ApplicationRecord
end

# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  key        :string(255)
#  title      :string(255)
#  content    :text(65535)
#  published  :boolean          default(FALSE)
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Page < ApplicationRecord
end

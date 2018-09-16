# == Schema Information
#
# Table name: planes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plane < ApplicationRecord
  include Sortable

  validates :name, :presence => true
  has_many :nodes, -> { order(Node.default_order_str) }

  def can_delete?
    self.nodes.count == 0
  end

end

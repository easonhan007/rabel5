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
  include Sortable

  has_many :topics
  has_many :bookmarks, :as => :bookmarkable, :dependent => :destroy
  belongs_to :plane, :touch => true

  validates :name, :plane_id, :key, :presence => true
  validates :key, :uniqueness => true, :format => {:with => /[a-zA-Z0-9_-]+/, :message => I18n.t('tips.node_key_format')}
  validate :node_key_should_not_contain_slash

  def can_delete?
    self.topics_count == 0
  end

  private
    def node_key_should_not_contain_slash
      errors.add(:key, "不能包含斜线(/)") if self.key.present? and self.key.include?('/')
    end

end

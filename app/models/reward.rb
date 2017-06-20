# == Schema Information
#
# Table name: rewards
#
#  id            :integer          not null, primary key
#  admin_user_id :integer
#  user_id       :integer
#  amount        :integer
#  balance       :integer
#  reason        :text(65535)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Reward < ApplicationRecord
  belongs_to :user
  TYPE_GRANT = 'grant'
  TYPE_REVOKE = 'revoke'

  attr_accessor :amount_str, :reward_type

  validates :user_id, :admin_user_id, :amount, :reason, :presence => true
  validates :reward_type, :amount_str, :presence => true, :on => :create
  validates :reward_type, :inclusion => { :in => [TYPE_GRANT, TYPE_REVOKE] }, :on => :create

  validate :amount_rules, :on => :create

  belongs_to :user
  belongs_to :admin_user, :class_name => 'User'

  before_validation :set_amount
  before_create :set_balance
  after_create :notify_user

  private
    def set_amount
      if self.reward_type == TYPE_GRANT
        self.amount = self.amount_str.to_i.abs
      else
        self.amount = self.amount_str.to_i.abs * -1
      end
    end

    def set_balance
      self.balance = self.user.reward + self.amount
    end

    def notify_user
      Notification.notify(
        self.user,
        self,
        self.admin_user,
        Notification::ACTION_REWARD,
        self.reason
      )
    end

    def amount_rules
      if self.amount.present?
        if self.amount == 0
          errors.add(:amount_str, "不能为零")
        end

        if self.reward_type == TYPE_REVOKE and self.amount.abs > self.user.reward
          errors.add(:amount_str, "扣除金额不能超过可用余额")
        end
      end
    end

end

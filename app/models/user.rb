# base
class User < ApplicationRecord
  acts_as_authentic

  def deliver_password_reset_instructions
    reset_perishable_token!
    PasswordResetMailer.reset_email(self).deliver_now
  end
end

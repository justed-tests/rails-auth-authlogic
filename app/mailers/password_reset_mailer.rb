# send letters to user
class PasswordResetMailer < ApplicationMailer
  def reset_email(user)
    @user = user
    mail(to: @user.email, subject: 'Reset your password')
  end
end

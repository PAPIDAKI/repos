# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/account_activation
  def account_activation
    UserMailer.account_activation
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/password_reset
  def password_reset
    UserMailer.password_reset
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/report_tickler
  def report_tickler
    UserMailer.report_tickler #(User.first)
  end
  
  def welcome_email
    UserMailer.welcome_email(User.last)
  end

  def report
    UserMailer.report
  end

end

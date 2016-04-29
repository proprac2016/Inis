class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  def bienvenido_email(user)
  @user = user

  mail(to: @user.email, subject: 'Registro')
  end
  layout 'mailer'
end

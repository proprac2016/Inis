class User < ActiveRecord::Base
	require 'securerandom'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #  validates :email, :uniqueness => true, :presence => true
  #  validates :password_confirmation, :password, :presence => true
   
   after_create :bienvenido_email 
  def bienvenido_email
    #Se llama al método "email_confirmation" del modelo Mailer creado
     ActionCorreo.bienvenido_email(self).deliver

   # MailNotifier.email_confirmation(self).deliver
    
  end
  #def claveUltimo  
   #@clave= Devise.friendly_token.first(4)
  #end

  #def clave  
   #@clave=(0...10).map { ('a'..'z').to_a[rand(8)] }.join
  #end


end

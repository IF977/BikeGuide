class User < ApplicationRecord
  before_save { self.email = email.downcase }
  #validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  def self.authenticar(email,senha)
    user = User.find_by_email(email)
    if user && user.crypted_password == senha
      return user
    else
      
    end
  end
end

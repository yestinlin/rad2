class User < ApplicationRecord
  before_save { self.email = email.downcase }
  VALID_NAME_REGEX = /\A[A-Za-z0-9\-\_]+\z/i
  validates :name,  presence: true, length: { minimum:2, maximum: 15 },
                    format: { with: VALID_NAME_REGEX },
                    uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  VALID_PASSWORD_REGEX = /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[#?!@$%^&*-])/                
  has_secure_password
  validates :password, presence: true, length: { minimum: 10 },
                         format: { with: VALID_PASSWORD_REGEX }
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)

    
    has_many :submits, dependent: :destroy
  end
end
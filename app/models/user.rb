class User < ApplicationRecord
  # encrypt password
  has_secure_password
  # Model associations
  has_many :tweets, foreign_key: :created_by
  # Validations
  validates_presence_of :userName, :email, :password_digest

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

 validates :userName, uniqueness: { case_sensitive: true }
end

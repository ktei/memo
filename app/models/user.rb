class User < ActiveRecord::Base

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,
            length:  { maximum: 50 }

  validates :email,
            presence: true,
            format: { with: email_regex },
            uniqueness: { case_sensitive: false }

  validates :password,
            presence: true,
            length: { within: 6..40 }
end

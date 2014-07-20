# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  EMAIL = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: :true, uniqueness: :true, :format => EMAIL

  has_secure_password validations: false
	validates :password, presence: true
  validates_length_of :password, :in => 6..10, :on => :create

  has_many :games

  def self.authenticate(username_or_email="", login_password="")

    if EMAIL.match(username_or_email)
      user = User.find_by_email(username_or_email)
    else
      user = User.find_by_username(username_or_email)
    end
    if user && user.match_password(login_password)
      return user
    else
      return false
    end
  end
end

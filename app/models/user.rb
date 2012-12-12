class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  

  before_save{|user| user.email = email.downcase}

  has_one :cv, :foreign_key => "user_id"

  validates :first_name, :presence => true, length: { maximum: 25}
  validates :last_name, :presence => true, length: { maximum: 25}

  validates :password, presence: true, length: {minimum: 8}
  validates :password_confirmation, presence: true
end

class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  has_one :cv, foreign_key => "user_id"

  validates :first_name, :presence => true, length: { maximum: 25}
  validates :last_name, :presence => true, length: { maximum: 25}
end

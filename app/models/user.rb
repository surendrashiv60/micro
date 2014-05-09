class User < ActiveRecord::Base
  attr_accessible :address, :contact_no, :gender, :is_active, :username, :password, :password_confirmation
  has_and_belongs_to_many :roles

  has_secure_password

  validate :username, presence => true
  validate :contact_no, presence => true
  validate :address, presence => true
  validate :password, presence => true, confirmation: true
  
end

class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  def self.ransackable_attributes(auth_object = nil)
    ["created_at","name", "usertype" , "email", "encrypted_password", "id", "id_value", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at"]
  end

  def manager?
    usertype=='manager'
  end
  def developer?
    usertype == 'developer'
  end
  def qa?
    usertype == 'qa'
  end
end

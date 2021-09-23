class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :admin_user

  has_one :user_info
  accepts_nested_attributes_for :user_info, reject_if: :all_blank
end

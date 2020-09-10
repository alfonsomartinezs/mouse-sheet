class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :characters, dependent: :destroy
  has_many :created_groups, foreign_key: "creator_id", class_name: "Group"
  
  has_many :user_memberships, foreign_key: "member_id", dependent: :destroy
  has_many :groups, through: :user_memberships 

end

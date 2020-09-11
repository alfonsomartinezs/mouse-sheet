class Group < ApplicationRecord
  has_many :user_memberships, dependent: :destroy
  has_many :members, through: :user_memberships, source: :member
  has_many :character_memberships, dependent: :destroy
  has_many :characters, through: :character_memberships
  
  belongs_to :creator, class_name: "User"
end

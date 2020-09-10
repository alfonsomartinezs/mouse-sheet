class Group < ApplicationRecord
  has_many :user_memberships, dependent: :destroy
  has_many :members, through: :user_memberships, source: :member
  
  belongs_to :creator, class_name: "User"
end

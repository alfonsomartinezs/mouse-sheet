class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :characters, dependent: :destroy
  has_many :created_groups, foreign_key: "creator_id", class_name: "Group"
end

class Skill < ApplicationRecord
  has_many :advancements, dependent: :destroy
  has_many :characters, through: :advancements
end

class Skill < ApplicationRecord
  has_many :advancements
  has_many :characters, through: :advancements
end

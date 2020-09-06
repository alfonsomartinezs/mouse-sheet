class Trait < ApplicationRecord
  has_many :trait_advancements, dependent: :destroy
  has_many :characters, through: :trait_advancements
end

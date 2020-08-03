class Trait < ApplicationRecord
  has_many :trait_advancements
  has_many :characters, through: :trait_advancements
end

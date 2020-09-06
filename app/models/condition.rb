class Condition < ApplicationRecord
  belongs_to :character
  belongs_to :condition_type
end

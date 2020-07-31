class Wise < ApplicationRecord
  has_many :wisdoms
  has_many :characters, through: :wisdoms
end

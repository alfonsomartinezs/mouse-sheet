class Wise < ApplicationRecord
  has_many :wisdoms, dependent: :destroy
  has_many :characters, through: :wisdoms
end

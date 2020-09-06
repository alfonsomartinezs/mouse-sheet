class ConditionType < ApplicationRecord
  has_many :conditions, dependent: :destroy
end

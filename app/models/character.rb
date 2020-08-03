class Character < ApplicationRecord
  belongs_to :user
  belongs_to :city, optional: true
  belongs_to :rank, optional: true
  has_many :wisdoms
  has_many :wises, through: :wisdoms
  has_many :advancements
  has_many :skills, through: :advancements
  has_many :traits, through: :trait_advancements
  has_many :items
  has_many :contacts
end

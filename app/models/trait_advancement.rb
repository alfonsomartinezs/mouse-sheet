class TraitAdvancement < ApplicationRecord
  belongs_to :character
  belongs_to :trait

  after_initialize :set_defaults, unless: :persisted? 

  def set_defaults 
    self.level ||= 0 
  end

end

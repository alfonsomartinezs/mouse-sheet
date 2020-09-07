class Character < ApplicationRecord
  belongs_to :user
  belongs_to :city, optional: true
  belongs_to :rank, optional: true
  
  has_many :wisdoms, dependent: :destroy
  has_many :wises, through: :wisdoms
  has_many :advancements, dependent: :destroy
  has_many :skills, through: :advancements
  has_many :trait_advancements, dependent: :destroy
  has_many :traits, through: :trait_advancements
  has_many :items, dependent: :destroy
  has_many :contacts, dependent: :destroy

  has_one_attached :image, dependent: :destroy
  validates :image, content_type: [:jpg,:jpeg,:png]
  after_commit :add_default_image, on: %i[create update]


  def thumbnail
    return self.image.variant(resize: '120x120')
  end

  def character_image 
    return self.image.variant(resize: '300x300')
  end

  private
  def add_default_image
    unless image.attached?
      image.attach(
        io: File.open(
          Rails.root.join(
            'app','assets','images','default_image.jpg'
          )
        ),
        filename: 'default_image.jpg',
        content_type: 'image/jpg'
      )
    end
  end



end

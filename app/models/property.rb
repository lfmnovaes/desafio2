class Property < ApplicationRecord
  has_many :photos, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true

  def cover_photo
    photos.third
  end
end

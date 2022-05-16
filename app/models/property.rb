class Property < ApplicationRecord
  has_many :photos, dependent: :destroy

  validates :district, presence: true
  validates :address, presence: true
  validates :bedroom, presence: true
  validates :bathroom, presence: true
  validates :price, presence: true
  validates :discount, presence: true

  def cover_photo
    photos.third
  end

  def district_to_initials
    sp_districts = {
      'Itaim Bibi' => 'IT',
      'Jardim Paulista' => 'JD',
      'Consolação' => 'CS',
      'Moema' => 'MA',
      'Brooklin' => 'BK',
      'Vila Olimpia' => 'VO',
      'Vila Nova Conceição' => 'VN'
    }
    sp_districts[district]
  end
end

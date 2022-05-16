class Property < ApplicationRecord
  has_many :photos, dependent: :destroy

  validates :district, presence: true
  validates :address, presence: true
  validates :price, presence: true

  def cover_photo
    photos.third
  end

  def sp_district
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

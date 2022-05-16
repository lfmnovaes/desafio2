require 'rails_helper'

RSpec.describe Property, type: :model do
  before(:each) do
    @property =
      Property.create(
        district: 'Jardim Paulista',
        address: 'R. Oscar Freire, 1579',
        bedroom: 3,
        bathroom: 2,
        price: 12_000,
        discount: 0
      )
    @property.photos.create(path: '640x480/1.jpg')
    @property.photos.create(path: '640x480/2.jpg')
    @photo = @property.photos.create(path: '640x480/3.jpg')
  end
  it 'valid when all fields are not nil' do
    expect(@photo).to be_valid
  end
  it 'path field is required' do
    @photo.path = nil
    expect(@photo).to_not be_valid
  end
end

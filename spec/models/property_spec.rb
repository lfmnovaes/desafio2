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
    @cover_photo = @property.photos.create(path: '640x480/3.jpg')
  end
  it 'valid when all fields are not nil' do
    expect(@property).to be_valid
  end
  it 'district field is required' do
    @property.district = nil
    expect(@property).to_not be_valid
  end
  it 'address field is required' do
    @property.address = nil
    expect(@property).to_not be_valid
  end
  it 'bedroom field is required' do
    @property.bedroom = nil
    expect(@property).to_not be_valid
  end
  it 'bathroom field is required' do
    @property.bathroom = nil
    expect(@property).to_not be_valid
  end
  it 'price field is required' do
    @property.price = nil
    expect(@property).to_not be_valid
  end
  it 'discount field is required' do
    @property.discount = nil
    expect(@property).to_not be_valid
  end
  it 'cover photo should be the third photo' do
    expect(@property.cover_photo.path).to eq(@cover_photo.path)
  end
  it 'check initials from the district' do
    expect(@property.get_initials_district).to eq('JD')
  end
end

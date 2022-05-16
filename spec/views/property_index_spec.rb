require 'rails_helper'

RSpec.describe 'Properties index validation', type: :system do
  describe 'Properties' do
    before do
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
      visit root_path
      sleep(1)
    end
    it 'should render São Paulo' do
      expect(page).to have_content('São Paulo')
    end
    it 'should render the property address' do
      expect(page).to have_content('R. Oscar Freire, 1579')
    end
  end
end

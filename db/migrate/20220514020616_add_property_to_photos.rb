class AddPropertyToPhotos < ActiveRecord::Migration[7.0]
  def change
    add_reference :photos, :property, null: false, foreign_key: true
  end
end

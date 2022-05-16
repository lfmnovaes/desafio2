class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :district
      t.string :address
      t.integer :bedroom
      t.integer :bathroom
      t.integer :price
      t.integer :discount

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.text :name
      t.float :price
      t.string :upc
      t.timestamps
    end
  end
end

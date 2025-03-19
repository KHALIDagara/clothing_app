class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end

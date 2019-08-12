class CreateVans < ActiveRecord::Migration[5.2]
  def change
    create_table :vans do |t|
      t.string :title
      t.text :description
      t.integer :price_per_day
      t.references :user, foreign_key: true
      t.string :model
      t.string :brand
      t.text :picture
      t.string :address

      t.timestamps
    end
  end
end

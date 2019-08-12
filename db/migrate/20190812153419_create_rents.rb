class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.date :begin_date
      t.date :end_date
      t.references :van, foreign_key: true
      t.references :user, foreign_key: true
      t.string :state
      t.integer :total_price

      t.timestamps
    end
  end
end

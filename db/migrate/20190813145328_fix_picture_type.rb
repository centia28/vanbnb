class FixPictureType < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :picture, :string
    change_column :vans, :picture, :string
  end
end

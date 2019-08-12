class AddDefaultValueToStateInRents < ActiveRecord::Migration[5.2]
  def change
    change_column :rents, :state, :string, :default => 'pending'
  end
end

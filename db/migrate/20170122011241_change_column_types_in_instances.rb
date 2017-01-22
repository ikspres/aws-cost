class ChangeColumnTypesInInstances < ActiveRecord::Migration[5.0]
  def change
    change_column :instances, :price_per_unit, :float
    change_column :instances, :vcpu, :integer
    change_column :instances, :memory, :float
    change_column :instances, :storage, :float
    change_column :instances, :clock_speed, :float
  end
end

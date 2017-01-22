class AddTenancyAndSkuToInstances < ActiveRecord::Migration[5.0]
  def change
    add_column :instances, :sku, :string
    add_column :instances, :tenancy, :string
  end
end

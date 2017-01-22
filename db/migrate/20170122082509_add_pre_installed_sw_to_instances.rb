class AddPreInstalledSwToInstances < ActiveRecord::Migration[5.0]
  def change
    add_column :instances, :pre_installed_sw, :string
  end
end

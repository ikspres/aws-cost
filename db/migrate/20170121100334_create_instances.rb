class CreateInstances < ActiveRecord::Migration[5.0]
  def change
    create_table :instances do |t|
      t.string :instance_type
      t.string :operating_system
      t.string :price_per_unit
      t.string :unit
      t.string :term_type
      t.string :lease_contract_length
      t.string :purchase_option
      t.string :location
      t.string :vcpu
      t.string :memory
      t.string :storage
      t.string :physical_processor
      t.string :clock_speed

      t.timestamps
    end
  end
end

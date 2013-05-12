class CreateErshouLocations < ActiveRecord::Migration
  def change
    create_table :ershou_locations do |t|
      t.string :name
      t.string :prefix
      t.references :node
      t.timestamps
    end
  end
end

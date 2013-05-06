class CreateErshouNodes < ActiveRecord::Migration
  def change
    create_table :ershou_nodes do |t|
      t.string :name
      t.string :city
      t.string :province
      t.timestamps
    end
  end
end

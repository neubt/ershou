class CreateErshouTopics < ActiveRecord::Migration
  def change
    create_table :ershou_topics do |t|
      t.string :title
      t.string :price
      t.string :phone
      t.string :qq
      t.text :content
      t.string :remote_ip
      t.string :state
      t.references :user
      t.references :node
      t.integer :comments_count
      t.datetime :deleted_at
      t.timestamps
    end
  end
end

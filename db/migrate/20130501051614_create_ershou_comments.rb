class CreateErshouComments < ActiveRecord::Migration
  def change
    create_table :ershou_comments do |t|
      t.text :content
      t.string :remote_ip
      t.references :user
      t.references :topic
      t.timestamps
    end
  end
end

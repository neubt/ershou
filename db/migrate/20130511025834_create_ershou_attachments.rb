class CreateErshouAttachments < ActiveRecord::Migration
  def change
    create_table :ershou_attachments do |t|
      t.attachment :uploaded
      t.string :uploaded_fingerprint
      
      t.references :user
      t.references :topic
      t.timestamps
    end
  end
end

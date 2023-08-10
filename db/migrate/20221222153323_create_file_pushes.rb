class CreateFilePushes < ActiveRecord::Migration[7.0]
  def change
    create_table :file_pushes do |t|
      t.integer :expire_after_days
      t.integer :expire_after_views
      t.boolean :expired, default: false
      t.string :url_token
      t.integer :user_id, default: nil
      t.boolean :deleted, default: false
      t.boolean :deletable_by_viewer, default: true
      t.boolean :retrieval_step, default: false
      t.datetime :expired_on, default: nil
      t.text :payload_ciphertext, :text, limit: 16.megabytes - 1
      t.text :note_ciphertext

      t.index [ :url_token ], unique: true
      t.index [ :user_id ]
      t.timestamps
    end
  end
end

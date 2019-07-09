class CreateChirrps < ActiveRecord::Migration[5.2]
  def change
    create_table :chirrps do |t|
      t.string :chirp_text
      t.integer :user_id
      t.string :media
      t.integer :parent_id
      t.string :location

      t.timestamps
    end
  end
end

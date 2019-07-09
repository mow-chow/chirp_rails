class CreateRechirrps < ActiveRecord::Migration[5.2]
  def change
    create_table :rechirrps do |t|
      t.integer :rechirper_id
      t.integer :source_chirp_id

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :location
      t.string :avatar
      t.string :cover
      t.string :about
      t.string :password_digest
      t.integer :chirps_count
      t.integer :followers_count
      t.integer :following_count

      t.timestamps
    end
  end
end

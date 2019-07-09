class CreateSquawks < ActiveRecord::Migration[5.2]
  def change
    create_table :squawks do |t|
      t.integer :chirrp_id
      t.integer :user_id

      t.timestamps
    end
  end
end

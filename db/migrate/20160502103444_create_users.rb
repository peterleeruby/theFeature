class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email_address
      t.string :first_name
      t.string :last_name
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end

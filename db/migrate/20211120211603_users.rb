class Users < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :api_key
      t.string :name

      t.timestamps
    end

    add_index :users, :name, :unique => true
  end

end
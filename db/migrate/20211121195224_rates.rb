class Rates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates do |t|
      t.integer :post_id
      t.integer :value

      t.timestamps
    end

  end
end

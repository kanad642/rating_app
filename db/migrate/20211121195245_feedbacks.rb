class Feedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.integer :post_id
      t.integer :owner_id
      t.string :comment

      t.timestamps
    end
  end
end
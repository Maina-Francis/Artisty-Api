class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :description
      t.integer :likes
      t.integer :user_id
      t.integer :admin_id  

      t.timestamps
    end
  end
end

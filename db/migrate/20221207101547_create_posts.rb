class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :description
      t.string :likes
      t.string :user_id
      t.string :admin_id

      t.timestamps
    end
  end
end

class AddColumnToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :last_name, :string
    add_column :admins, :first_name, :string
    add_column :admins, :password, :string
    add_column :admins, :email, :string
    remove_column :admins, :name, :string
  end
end

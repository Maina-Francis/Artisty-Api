class AddPasswordDigestToAdminsColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :password_digest, :string
    remove_column :admins, :password, :string
  end
end

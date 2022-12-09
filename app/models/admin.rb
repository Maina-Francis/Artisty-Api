class Admin < ApplicationRecord
    has_secure_password

    has_many :users, dependent: :destroy

    has_many :posts, through: :user


end

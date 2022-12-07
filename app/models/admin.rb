class Admin < ApplicationRecord
    has_many :posts, through: :users, dependent: :destroy
end

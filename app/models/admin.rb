class Admin < ApplicationRecord
    has_many :posts, through: :users 
end

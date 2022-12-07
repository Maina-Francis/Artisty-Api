class Admin < ApplicationRecord
    has_many :posts, through: :user

end

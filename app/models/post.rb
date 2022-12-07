class Post < ApplicationRecord
    belong_to :admin, through: :user
end

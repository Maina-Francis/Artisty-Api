class Post < ApplicationRecord
    validates :images, presence: true

    belongs_to :user
end

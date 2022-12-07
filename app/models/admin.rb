class Admin < ApplicationRecord
    has_many :users, dependent: :destroy
end

class User < ApplicationRecord
    #has_secure_password
    has_many :posts, dependent: :destroy
    belongs_to :admin


  
  
end

class User < ApplicationRecord
    
    validates :user_name, presence: true
    validates :email, presence: true
    validates :age, presence: true
    validates :password, presence: true
    validates :status, presence: true

end

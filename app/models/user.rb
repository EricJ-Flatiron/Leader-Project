class User < ApplicationRecord
    has_many :ratings
    has_many :tyrants, through: :ratings
    has_many :comments
    has_many :tyrants, through: :comments
    has_many :tyrants
    validates :name, length: {minimum: 3}
    validates :name, uniqueness: true
    validates :password, length: {minimum: 3}
    has_secure_password
end

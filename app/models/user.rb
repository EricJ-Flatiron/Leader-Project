class User < ApplicationRecord
    has_many :ratings
    has_many :tyrants, through: :ratings
    has_many :comments
    has_many :tyrants, through: :comments
end

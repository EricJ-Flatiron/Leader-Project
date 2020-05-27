class Tyrant < ApplicationRecord
    has_many :ratings
    has_many :users, through: :ratings
    has_many :comments
    has_many :users, through: :comments
end
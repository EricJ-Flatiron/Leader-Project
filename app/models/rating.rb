class Rating < ApplicationRecord
    belongs_to :user
    belongs_to :tyrant

    validates :appearance_rating, numericality: {greater_than: 0, less_than: 6}
    validates :economics_rating, numericality: {greater_than: 0, less_than: 6}
    validates :social_rating, numericality: {greater_than: 0, less_than: 6}
    validates :warmongering_rating, numericality: {greater_than: 0, less_than: 6}
    validates :charisma_rating, numericality: {greater_than: 0, less_than: 6}
    validates :user_id, presence: true
    validates :tyrant_id, presence: true
end

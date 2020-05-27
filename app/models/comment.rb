class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :tyrant

    validates :user_id, presence: true
    validates :tyrant_id, presence: true
    validates :comments, length: { minimum: 10 }
end

class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :tyrant

    validates :user_id, presence: true
    validates :tyrant_id, presence: true
    validates :comments, length: { greater_than: 2 }
end

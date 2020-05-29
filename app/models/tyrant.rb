class Tyrant < ApplicationRecord
    has_many :ratings
    has_many :users, through: :ratings
    has_many :comments
    has_many :users, through: :comments
    has_one_attached :avatar
    belongs_to :user
    validates :name, length: {minimum: 3}
    validates :name, uniqueness: true
    validates :bio, presence: true
    validates :economics_policy, presence: true
    validates :warmongering_policy, presence: true
    validates :social_policy, presence: true
    # validates :avatar, presence: true




    def avg_appearance_rating
        sum = 0
        self.ratings.each do |r|
            sum += r.appearance_rating
        end
        (sum.to_f/self.ratings.length.to_f).round(2)
    end 

    def avg_economics_rating
        sum = 0
        self.ratings.each do |r|
            sum += r.economics_rating
        end
        (sum.to_f/self.ratings.length.to_f).round(2)
    end

    def avg_social_rating
        sum = 0
        self.ratings.each do |r|
            sum += r.social_rating
        end
        (sum.to_f/self.ratings.length.to_f).round(2)
    end

    def avg_warmongering_rating
        sum = 0
        self.ratings.each do |r|
            sum += r.warmongering_rating
        end
        (sum.to_f/self.ratings.length.to_f).round(2)
    end

    def avg_charisma_rating
        sum = 0
        self.ratings.each do |r|
            sum += r.charisma_rating
        end
        (sum.to_f/self.ratings.length.to_f).round(2)
    end
end

class Location < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    scope :most_reviews, -> { 
        left_joins(:reviews).
        group(:id).
        order('COUNT(reviews.id) DESC').
        first 
    }
    

    # scope :most_reviews_list, -> { 
    #     left_joins(:reviews).
    #     group(:id).
    #     order('COUNT(reviews.id) DESC')
    # }



end

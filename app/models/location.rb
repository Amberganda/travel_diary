class Location < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    scope :most_reviews, -> { 
        left_joins(:reviews).
        group(:id).
        order('COUNT(reviews.id) DESC').
        limit(1) #limit to make chainable
        # https://stackoverflow.com/a/42847464/10308022
    }
    

    # scope :most_reviews_list, -> { 
    #     left_joins(:reviews).
    #     group(:id).
    #     order('COUNT(reviews.id) DESC')
    # }



end

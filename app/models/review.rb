class Review < ApplicationRecord
    belongs_to :user
    belongs_to :location
    validates :content, length: { in: 4..300 }

    scope :most_recent, -> { 
        order(created_at: :desc).first
    }

    # scope :most_recent, -> { 
    #     order(created_at: :asc).last
    # }

    
end

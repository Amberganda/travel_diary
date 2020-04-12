class Review < ApplicationRecord
    belongs_to :user
    belongs_to :location
    validates :content, length: { in: 4..300 }

end

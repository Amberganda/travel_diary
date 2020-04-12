class HomeController < ApplicationController

    def index
       @most_reviewed_location = Location.most_reviews 
    end
    
end

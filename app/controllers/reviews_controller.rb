class ReviewsController < ApplicationController

    def new
        @review = Review.new
    end
    
    def create
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        @review.save
        redirect_to review_path(@review)
    end

    def show
        @review = Review.find(params[:id])
    end


    private

    def review_params
        params.require(:review).permit(:content, :location_id)
    end

end

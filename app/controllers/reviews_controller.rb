class ReviewsController < ApplicationController

    def index
        if params[:user_id]
            user = User.find(params[:user_id])
            @reviews = user.reviews
        else
            @reviews = Review.all
        end

    end

    def new
        @review = Review.new
        if params[:location_id]
            @review.location_id = params[:location_id]
        end
    end
    
    def create
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        if @review.save
            flash[:success] = 'Your review has been created.'
            redirect_to review_path(@review)
        else
            flash.now[:alert] = 'Your review could not be created!'
            render :new
        end
    end

    def show
        @review = Review.find(params[:id])
    end


    private

    def review_params
        params.require(:review).permit(:content, :location_id)
    end

end

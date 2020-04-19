class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
        @users = User.all
    end

    def show
        begin
            @user = User.find(params[:id])
        rescue
            flash.alert = "User not found."
            redirect_to users_path
        end
    end
    
end


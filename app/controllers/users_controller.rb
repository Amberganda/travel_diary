class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
        #work on this search by "params:search user names w/ "cool"
        if params[:search]
            @users = User.email_contains(params[:search])
        else
            @users = User.all
        end
        # if User.find(params:search)
        # params[:search]

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


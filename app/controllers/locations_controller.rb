class LocationsController < ApplicationController
    
    def index
        @locations = Location.all
    end

    def show
        begin
            @location = Location.find(params[:id])
        rescue
            flash.alert = "Location not found."
            redirect_to locations_path
        end
    end

end

class MissionsController < ApplicationController

    def new
        @mission = Mission.new
    end

    def create
        @mission = Mission.new(mission_params)
        if @mission.save
            redirect_to scientist_path(params["mission"]["scientist_id"])
        else
            render :new
        end
    end

    private

    def mission_params
        params.require(:mission).permit(:name, :planet_id, :scientist_id) 
    end
end

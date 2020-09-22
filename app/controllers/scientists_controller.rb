class ScientistsController < ApplicationController

    def index
        @scientists = Scientist.all
    end

    def show
        find_scientist
    end

    def new
        @scientist = Scientist.new
    end

    def create
        @scientist = Scientist.new(scientist_params)
        if @scientist.save
            redirect_to scientist_path(@scientist.id)
        else
            render :new
        end
    end

    def edit
        find_scientist
    end

    def update
        find_scientist
        if @scientist.update(scientist_params)
            redirect_to scientist_path(@scientist.id)
        else
            render :edit
        end
    end

    def destroy
        find_scientist
        @scientist.destroy
        redirect_to scientists_path
    end

    private 

    def scientist_params
        # params.require(:taco).permit(:name, :field_of_study)
        params.require(:scientist).permit(:name, :field_of_study)
    end

    def find_scientist
        @scientist = Scientist.find(params[:id])
    end
end

class CharactersController < ApplicationController

    def index 
        @characters = Character.all
        render json: @characters
    end

    def show
        @character = Character.find_by(params[:id])
        render json: @character
    end

    def create 
        @character = Character.create(
            name: params[:name],
            house: params[:house],
            ancestry: params[:ancestry],
            image: params[:image]
            )
        render json: @character
    end

    def delete
        @character = Character.find_by(params[:id])
        @character.destroy
        render json: @character
    end
end

class CharactersController < ApplicationController

    before_action :find_character, only: [:show, :update, :destroy]

    def index 
        @characters = Character.all
        render json: @characters
    end

    def show
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

    def destroy
        @character.destroy
    end

    private

    def find_character
        @character = Character.find(params[:id])
    end
end

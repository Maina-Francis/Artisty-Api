class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users
    end

    def create
        user = User.create!(user_params)
        render json: user
    end

    def show 
        user = user_params
        render json: user, status: :ok
    end

    #private methods
    private 
    def user_params
        params.permit(:name)
    end

    def user_params
        User.find(params[:id])
    end
end

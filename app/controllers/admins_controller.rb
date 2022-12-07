class AdminsController < ApplicationController
    def index 
        users = Admin.all 
        render json: users
    end

    def create
        admin = Admin.create!(admin_params)
        render json: admin
    end

    #private methods
    private 
    def admin_params
        params.permit(:name)
    end
end

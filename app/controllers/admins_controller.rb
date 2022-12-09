class AdminsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :invalid_user_details

    def index 
        users = Admin.all 
        render json: users, except: [:created_at, :updated_at] ,include: :users
    end

    def create
        admin = Admin.create!(admin_params)
        render json: admin
    end

    def signup
        admin = Admin.create!(params.permit(:first_name, :last_name, :email, :password))
        render json: admin
    end

    def login
        admin = find_bu
    end



    #private methods
    private 
    def admin_params
        params.permit(:name)
    end

    def invalid_user_details
        rendr json: {error: "invalid details"} status: :404
    end

end

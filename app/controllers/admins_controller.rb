class AdminsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :invalid_admin_details
rescue_from ActiveRecord::RecordNotFound, with: :admin_not_found


    def index 
        users = Admin.all 
        render json: users, except: [:created_at, :updated_at] ,include: :users
    end

    def create
        admin = Admin.create!(admin_params)
        render json: admin
    end

    def signup
        admin = Admin.create!(params.permit(:first_name, :last_name, :email, :password, :password_confirmation))
        render json: admin, status: :created
    end

    def login
        admin = Admin.find_by(email: params[:email])
        if admin&.authenticate(params[:password])
            session[:admin_id] = admin.id
        render json: admin, status: :ok
        else  
            render json: {error: "invalid email or password"}, status: :unauthorized
        end

        def signout
            session.delete :admin_id
            head :no_content
        end 
    end



    #private methods
    private 
    def admin_params
        params.permit(:name)
    end

    def invalid_admin_details
        render json: {error: "invalid details"}, status: :invalid_admin_details
    end

    def admin_not_found
        render json: {error: "admin not found"}, status: :not_found

    end

end

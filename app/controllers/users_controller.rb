class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users, except: [:created_at, :updated_at] ,include: :posts 
    end

    def create
        user = User.create!(user_params)
        render json: user, except: [:created_at, :updated_at] 
    end

    def show 
        user = user_params
        render json: user,  except: [:created_at, :updated_at] , include: :posts, status: :ok
    end

    def destroy
        user = user_params
        if user 
            user.destroy
            head :no_content
        else
            render json: {error: "User not found"}, status: :not_found
        end
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

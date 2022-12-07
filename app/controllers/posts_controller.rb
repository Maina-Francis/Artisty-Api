class PostsController < ApplicationController

    def index 
        posts = Post.all 
        render json: posts
    end

    def create
        post = Post.create!(create_post_params)
        render json: post
    end

    def show 
        posts = post_params 
        render json: posts, status: :ok
    end

    def update
        post = post_params
        post.update!(create_post_params)
        render json: post, status: :ok
    end

    # private methods 
    private 
    def post_params
        Post.find(params[:id])
    end

    def create_post_params
        params.permit(:description, :images)
    end
end

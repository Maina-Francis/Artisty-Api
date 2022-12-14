class PostsController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_message
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_message


    def index 
        posts = Post.all 
        render json: posts, except: [:created_at, :updated_at] 
    end

    def create
        post = Post.create(create_post_params)
        render json: post, status: :accepted
    end

    # DELETE /posts/:id
    def destroy
        post = Post.find_by(id: params[:id])
        if post
            post.destroy
            head :no_content
        else
          render json: { error: "Post not found" }, status: :not_found
        end
    end

    def show 
        posts = post_params 
        render json: posts,  except: [:created_at, :updated_at], status: :ok
    end

    # GET /posts/:id    #I suggest we use this
    #def show
    #    post = Post.find_by(id: params[:id])
    #    if post
    #        render json: post
    #    else
    #        render json: { error: "Post not found" }, status: :not_found
    #    end
    #end

    def update
        post = post_params
        post.update!(create_post_params)
        render json: post,  except: [:created_at, :updated_at],  status: :ok
    end

    # private methods 
    private 
    def post_params
        Post.find(params[:id])
    end

    def create_post_params
        params.permit(:description, :images, :admin_id, :user_id, :likes)
    end

    def render_not_found_message
        render json: { error: "The Post wasn't found" }, status: :not_found
    end


    def render_unprocessable_entity_message(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
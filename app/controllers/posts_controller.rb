class PostsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.new(post_params)
        post.user_id = current_user.id
        if tweet.save!
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    private
    def post_params
        params.require(:post).permit(:camp, :about, :cost, :facility, :access, :image)
    end
end

class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order(:created_at)
  end

  def new
    @post = Post.new
  end

  def create
    post = current_user.posts.create!(post_params)
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end

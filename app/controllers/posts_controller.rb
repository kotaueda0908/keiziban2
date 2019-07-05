class PostsController < ApplicationController
  before_action :post_params, only: [:create]

  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end

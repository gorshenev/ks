class PostsController < ApplicationController
  before_filter :get_post, :only => [:show, :edit, :update, :destroy]


  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:success] = "New post created"
      redirect_to posts_path
    else
      flash[:error] = "There was an error creating that post"
      render action: :new
    end
  end

  def edit

  end

  def update
    if @post.update_attributes(post_params)
      flash[:success] = "Post updated"
      redirect_to post_path(@post)
    else
      flash[:error] = "There was an error updating that post"
      render action: :edit
    end
  end

  def destroy
    if @post.destroy
      flash[:success] = "Post deleted"
    else
      flash[:error] = "Post could not be deleted"
    end

    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :raw_markdown)
  end

  def get_post
    @post = Post.find(params[:id])
  end



  def get_new_product
    @new_product = Product.all.order(created_at: :desc).first
  end
end
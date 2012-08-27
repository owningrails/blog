class PostsController < ApplicationController
  respond_to :html, :json
  
  def index
    @posts = Post.all

    respond_with @posts
  end

  def show
    @post = Post.find(params[:id])

    respond_with @post
  end

  def new
    @post = Post.new

    respond_with @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(params[:post])

    respond_with @post
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])

    respond_with @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_with @post
  end
end

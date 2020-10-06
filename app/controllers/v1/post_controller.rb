class V1::PostController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    post = Post.all
    render json: post, status: :ok
  end

  def show
    post = Post.find(params[:id])
    render json: { status: "SUCCESS", message: "New post created", data: post }, status: :ok
  end

  def create
    post = Post.new(post_params)
    if post.save
      #render json: post, status: :ok
      render json: { status: "SUCCESS", message: "New post created", data: post }, status: :ok
    else
      render json: { status: "ERROR", message: "New post not created", data: post.errors }, status: :error
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    render json: { status: "SUCCESS", message: "Post deleted", data: post }, status: :ok
  end

  def update
    post = Post.find(params[:id])
    if post.update_attributes(post_params)
      render json: { status: "SUCCESS", message: "Post updated", data: post }, status: :ok
    else
      render json: { status: "ERROR", message: "Post not updated", data: post.errors }, status: :error
    end
  end

  def post_params
    params.permit(:title, :subtitle, :isFeatured, :likes, :body, :publishedDate, :isTech, :techName)
  end
end

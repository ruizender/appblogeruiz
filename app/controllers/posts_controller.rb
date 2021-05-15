class PostsController < ApplicationController
  http_basic_authenticate_with name: 'desafiovamoscontodo', password: 'AHTJEAS23123%23', only: :dashboard
  def index
    @post = Post.all.order(created_at: :desc)
  end

  def dashboard
    @post = Post.new
  end

  def create 
    @post = Post.create(title: params[:title],image_url: params[:image_url], content: params[:content])
  end
end

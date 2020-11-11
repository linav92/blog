class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def index
    @post = Post.order(id: :desc)
  end

  def dashboard

  end

  def create
    @post = Post.create(title: params[:title], 
                        image_url: params[:image_url], 
                        content: params[:content])
    @post.save
  end
end

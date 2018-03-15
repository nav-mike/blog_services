class Api::PostsController < ApplicationController
  def index
    render json: {posts: []}, status: :ok
  end
end

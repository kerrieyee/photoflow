class PostsController < ApplicationController
	respond_to :json, :html
	def index
		@posts = Post.all
		respond_with @posts
	end

	def new
		@post = Post.new
		respond_with @post
	end

	def create
		@post = Post.create(params[:post])
		respond_with @post
	end

	def edit
	end

	def update
	end

	def destroy
	end

end

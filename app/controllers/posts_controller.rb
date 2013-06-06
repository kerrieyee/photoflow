class PostsController < ApplicationController
	respond_to :json, :html
	def index
		@posts = Post.all
		respond_with @posts
	end

	def create
		@post = Post.create(title: params[:title],
												photo_url: params[:url],
												user: params[:user],
												caption: params[:caption])
		p @post
		p @post.errors
		respond_with @post
	end

	def update
	end

	def destroy
	end

end

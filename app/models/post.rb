class Post < ActiveRecord::Base
	validates :photo_url, presence: true
	validates :photo_url, format: {with: /.jpg|.png|.jpeg|.gif/, message: "Not a valid image type"}
	#only take photo_urls that end with jpg, png, jpeg, gif
end

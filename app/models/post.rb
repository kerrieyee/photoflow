class Post < ActiveRecord::Base

	attr_accessor :title, :caption, :photo_url
	validates :title, :photo_url, presence: true
end

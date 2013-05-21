class Post < ActiveRecord::Base
	validates :title, :photo_url, presence: true
end

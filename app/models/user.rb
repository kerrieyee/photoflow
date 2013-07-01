class User < ActiveRecord::Base
	validates :password, confirmation: true
	validates :password, presence: true, on: :create
	validates :email, :username, presence: true, uniqueness: true
end


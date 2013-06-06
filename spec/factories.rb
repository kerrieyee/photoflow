require 'faker'
FactoryGirl.define do
	factory :post do
		title {Faker::Name.name}
		user {Faker::Name.name}
		caption {Faker::Lorem.paragraph}
		photo_url {"http://" + Faker::Internet.domain_name}
	end
end
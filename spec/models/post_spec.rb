require 'spec_helper'

describe Post do
	it {should validate_presence_of(:user)}
	it {should validate_presence_of(:photo_url)}
	it {should allow_value("email.jpg").for(:photo_url) }
	it {should_not allow_value("foo").for(:photo_url) }


end

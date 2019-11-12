require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "If title is there and body long enough" do
		post = Post.new(:title => "Test", :body => "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaacnnncn")
		assert post.valid?
	end
	
	
	
end

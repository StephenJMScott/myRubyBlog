class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :all_categories
  helper_method :all_posts
  before_filter :site_search
  
	def all_categories
		@categories =Category.all
	end
	
	def all_posts
		@posts =Post.all
	end
	
	def site_search
		@search = Post.search(params[:search])
		@search_posts = @search.all
	end
end

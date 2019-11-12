class Post < ActiveRecord::Base
	attr_accessible :title, :body, :category_id, :admin_user_id
	belongs_to :category
	belongs_to :admin_user
	has_many :post_comments, :dependent => :destroy
	validates :title, :presence => true
	validates_length_of :body, :minimum => 10
	
end

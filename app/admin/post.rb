ActiveAdmin.register Post do
	menu :label => "Blog Posts"
	index do 
		column :title
		column "Author", :admin_user
		column :category
		column :created_at
		default_actions
	end
end

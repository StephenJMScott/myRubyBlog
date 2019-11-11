ActiveAdmin::Dashboards.build do
	section "Recent Posts" , :priority => 1 do
		table_for Post.order("id desc").limit(15) do
			column :id
			column "Post Title", :title do |post|
				link_to post.title, [:admin, post]
			end
			column :category, :sortable => :category
			column :created_at
		end
		strong {link_to "Show all posts", :admin_posts}
	end
	
	section "Categories", :priority => 2 do
		table_for Category.order("id desc").limit(15) do
			column :id
			column "Category Title", :name do |category|
				link_to category.name, [:admin, category]
			end
			column :created_at
		end
		strong {link_to "Show all categories", :admin_categories}
	end
	
end

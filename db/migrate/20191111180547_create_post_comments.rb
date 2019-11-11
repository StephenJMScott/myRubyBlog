class CreatePostComments < ActiveRecord::Migration
  def change
    create_table :post_comments do |t|
      t.string :name
      t.string :email
      t.text :body
      t.references :post

      t.timestamps
    end
    add_index :post_comments, :post_id
  end
end

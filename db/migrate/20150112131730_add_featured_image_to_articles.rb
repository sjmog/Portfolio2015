class AddFeaturedImageToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :featured_image, :string, default: "http://placehold.it/300x300"
  end
end

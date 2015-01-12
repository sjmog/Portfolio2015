class CreateArticleCategories < ActiveRecord::Migration
  def change
    create_table :article_categories do |t|
      t.string :title, default: "Untitled Category"
      t.string :icon, default: "icon-lab"
      t.string :image, default: "http://placehold.it/300x300"

      t.timestamps null: false
    end
  end
end

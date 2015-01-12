class AddArticleCategoryReferenceToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :article_category, index: true
    add_foreign_key :articles, :article_categories
  end
end

class AddShortDescriptionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :short_description, :string, default: "Insert short description here"
  end
end

class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, default: "My Project"
      t.datetime :date, default: "1 January 2015".to_datetime
      t.text :body, default: "Insert body text here"

      t.timestamps null: false
    end
  end
end

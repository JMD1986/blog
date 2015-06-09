class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.string :title, default: "New Blog"
      t.timestamps null: false
    end
  end
end

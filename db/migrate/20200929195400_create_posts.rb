class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.boolean :isFeatured
      t.integer :likes
      t.string :body
      t.string :publishedDate
      t.boolean :isTech
      t.string :techName

      t.timestamps
    end
  end
end

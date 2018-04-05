class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image
      t.string :image_title
      t.string :file_size
      t.string :content_type
      t.string :description
      t.integer :category_id

      t.timestamps
    end
  end
end

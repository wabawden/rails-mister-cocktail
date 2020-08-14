class AddImageUrlToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :image_url, :string, default: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSWn6L7N1RXGrfzCDnXs5NONZseJxHit4Z9bA&usqp=CAU'
  end
end

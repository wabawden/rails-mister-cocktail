class CreateDoses < ActiveRecord::Migration[6.0]
  def up
    add_column :image_url, :string, default: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSWn6L7N1RXGrfzCDnXs5NONZseJxHit4Z9bA&usqp=CAU"
  end
end

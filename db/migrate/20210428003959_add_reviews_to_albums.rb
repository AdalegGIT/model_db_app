class AddReviewsToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_column :albums, :reviews, :string
  end
end

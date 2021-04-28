class AddReviewsToArtist < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :reviews, :string
    add_column :artists, :location, :string
  end
end

class AddReviewsToTracks < ActiveRecord::Migration[5.1]
  def change
    add_column :tracks, :reviews, :string
  end
end

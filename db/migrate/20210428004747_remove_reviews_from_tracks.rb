class RemoveReviewsFromTracks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tracks, :reviews, :string
  end
end

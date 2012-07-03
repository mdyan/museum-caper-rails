class RenameFavoriteColourToFavouriteColour < ActiveRecord::Migration
  @old_name = :favorite_colour
  @new_name = :favourite_colour
  def up
    rename_column :users, :favorite_colour, :favourite_colour
  end

  def down
    rename_column :users, :favourite_colour, :favorite_colour
  end
end

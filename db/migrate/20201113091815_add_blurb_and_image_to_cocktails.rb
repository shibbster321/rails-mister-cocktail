class AddBlurbAndImageToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :blurb, :string
  end
end

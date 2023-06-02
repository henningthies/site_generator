class AddImageUrlToSections < ActiveRecord::Migration[7.0]
  def change
    add_column :sections, :image_url, :string
  end
end

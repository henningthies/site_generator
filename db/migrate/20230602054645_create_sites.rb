class CreateSites < ActiveRecord::Migration[7.0]
  def change
    create_table :sites do |t|
      t.string :title
      t.string :headline

      t.timestamps
    end
  end
end

class CreatePrompts < ActiveRecord::Migration[7.0]
  def change
    create_table :prompts do |t|
      t.references :promptable, null: false, foreign_key: true
      t.text :request_body
      t.text :response_body

      t.timestamps
    end
  end
end

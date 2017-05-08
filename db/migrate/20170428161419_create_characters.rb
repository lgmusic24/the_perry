class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :nationality
      t.string :story
      t.integer :age
      t.string :img_url
      t.references :story, index: true, foreign_key: true
      t.string :description
      t.string :role
      t.timestamps
    end
  end
end

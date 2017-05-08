class CreateStory < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :name
      t.string :img_url
      t.string :description
    end
  end
end

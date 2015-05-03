class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url, null: false
      t.references :tweet, index: true

      t.timestamps null: false
    end
    add_foreign_key :pictures, :tweets
  end
end

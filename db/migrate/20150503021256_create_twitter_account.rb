class CreateTwitterAccount < ActiveRecord::Migration
  def change
    create_table :twitter_accounts do |t|
      t.references :denpa, null: false, index: true
      t.timestamps null: false
      t.string "screen_name", null: false
      t.integer "uid", null: false
    end
  end
end

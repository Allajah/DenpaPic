class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :url, null: false
      t.integer :fav, null: false
      t.integer :rt, null: false
      t.integer :status_id, null: false
      t.references :twitter_account, index: true, null: false
      t.timestamps null: false
    end
    add_foreign_key :tweets, :twitter_accounts
  end
end

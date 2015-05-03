class AddNullFalseToTweetIdInPictures < ActiveRecord::Migration
  def up
    change_column_null :pictures, :tweet_id, false
  end
  def down
    change_column_null :pictures, :tweet_id, true
  end
end

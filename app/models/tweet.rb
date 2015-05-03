class Tweet < ActiveRecord::Base
  validates :url, presence: true
  validates :fav, presence: true
  validates :rt, presence: true
  validates :status_id, presence: true
  belongs_to :twitter_account
  has_many :pictures
end

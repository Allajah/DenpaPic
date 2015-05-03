class Denpa < ActiveRecord::Base
  validates :name, presence: true
  has_one :twitter_account
end 

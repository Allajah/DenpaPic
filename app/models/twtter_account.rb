class TwitterAccount < AciveRecord::Base
  validates :screen_name, presence: true
  validates :uid, presence: true
  belongs_to :denpa
end

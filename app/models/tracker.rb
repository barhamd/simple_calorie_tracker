class Tracker < ActiveRecord::Base
  attr_accessible :calories, :consumed_on, :user_id
  belongs_to :user
end

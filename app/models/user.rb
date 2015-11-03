class User < ActiveRecord::Base
  has_many :tweets
  acts_as_followable
  acts_as_follower
end

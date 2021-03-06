class User < ActiveRecord::Base
  has_many :tweets
  acts_as_followable
  acts_as_follower
  has_secure_password
  validates_presence_of :email
  validates_uniqueness_of :email
  max_paginates_per 25

  def self.authenticate!(email, password)
    user = User.find_by_email(email)
    #return false unless user
    user.authenticate(password)
  end

end

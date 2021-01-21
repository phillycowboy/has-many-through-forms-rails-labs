class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def user_attributes=(user_attributes)
    self.user = User.find_or_create_by(username: user_attributes[:username]) 
  end
end

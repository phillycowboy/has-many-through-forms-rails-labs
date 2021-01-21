class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user

  #     def user_attributes=(user_attributes)
  #    user_attributes.values.each do |user_attribute|
  #     if user_attribute["username"].present? 
  #      user = User.find_or_create_by(user_attribute)
  #       self.users  << user
      
  #     end
  #   end
  # end

 def user_attributes=(user_attributes)
    self.user = User.find_or_create_by(username: user_attributes[:username]) unless user_attributes[:username].blank?

  end

end

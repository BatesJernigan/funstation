class Message < ActiveRecord::Base
  attr_accessible :content, :user_id
  
  belongs_to :user
  
  validates :user, :presence => true
  validates :content, :presence => true
end

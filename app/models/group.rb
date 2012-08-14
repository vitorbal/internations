class Group < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :user_ids

  has_many :group_users
  has_many :users, :through => :group_users

  validates :name, :presence => true
end

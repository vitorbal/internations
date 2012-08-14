class User < ActiveRecord::Base
  attr_accessible :name

  has_many :group_users
  has_many :groups, :through => :group_users

  validates :name, :presence => true
end

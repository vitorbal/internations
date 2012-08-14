class Group < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :user_ids

  has_many :group_users
  has_many :users, :through => :group_users

  validates :name, :presence => true

  before_destroy :is_deletable?

  def is_deletable?
    unless users.empty?
      errors.add(:base, "Can not delete a group that still contains users")
      return false
    end
  end
end

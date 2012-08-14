class GroupUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  # This is empty for now, but it could be useful in the future
  # if we want to add validations, callbacks or attributes to the
  # UserGroup relationship
end

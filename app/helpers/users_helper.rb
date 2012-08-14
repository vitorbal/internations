module UsersHelper
  def users_link_list(users)
    render :partial => "users/link_list", :locals => { :users => users }
  end
end

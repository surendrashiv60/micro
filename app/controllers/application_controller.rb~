class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :authorization
  helper_method :has_permission

  def authorization  
      if session[:user_id]==nil
          redirect_to new_auth_path
      end
  end

  def has_permission(controller,action)
      if session[:user_id]  ==nil
          redirect_to new_auth_path
      else
          user=User.find(session[:user_id]).role_ids
          user.each do |role_id|
               group=Role.find(role_id).group_ids
                      group.each do |group_id|
                                  privilage_data=Group.find(group_id).privileges
                                  if privilage_data.detect{|privilage|
                                        privilage.controller == controller && privilage.action == action
                                     }
                                     return true
                                  else
                                     return false 
                                  end
                       end#end of profile id loop
          end#end of role id loop
      end
  end 

end

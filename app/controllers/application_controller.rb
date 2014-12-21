class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 before_action :require_profile, if: :devise_controller?
 def require_profile
    if !current_user.blank?
      if current_user.email == "mr.unesi@alumni.ut.ac.ir" and current_user.profile.blank?
        @profile = Profile.new();
        @profile.isAdmin = true
        @profile.save
        current_user.profile = @profile
      end
      #redirect_to profile_path(current_user.profile.id);
    end
  end
  
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

    before_filter do
    resource = controller_path.singularize.gsub('/', '_').to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end
end

class ApplicationController < ActionController::Base

   before_action :authenticate_user!

   add_flash_types :success, :danger, :info

    private

    # Overwriting the sign_out redirect path method
     def after_sign_out_path_for(resource_or_scope)
        user_session_path
     end
end

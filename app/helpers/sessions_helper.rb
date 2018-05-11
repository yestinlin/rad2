module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
<<<<<<< HEAD
=======

>>>>>>> add_submit
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
<<<<<<< HEAD
  # Logs out the current user.
=======
>>>>>>> add_submit
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> add_submit

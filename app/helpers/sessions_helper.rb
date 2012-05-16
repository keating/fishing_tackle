module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    current_user = user
  end

  def sign_in?
    !current_user.nil?
  end

  def current_user
    @current_user ||= user_from_remember_token
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user?(user)
    current_user == user
  end

  def signed_in_user
    unless sign_in?
      store_location
      redirect_to login_path
    end
  end

  def sign_out
    current_user = nil
    cookies.delete(:remember_token)
  end

  def redirect_back_or(default)
    redirect_to(session[:redirect_to] || default)
  end

  def store_location
    session[:return_to] = request.fullpath
  end

  private

  def user_from_remember_token
    remember_token = cookies[:remember_token]
    User.find_by_remember_token remember_token
  end

  def clear_return_to
    session.delete(:return_to)
  end

end

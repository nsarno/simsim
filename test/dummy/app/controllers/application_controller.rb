class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  include Knock::Authenticable
  def authenticate_trump
    set_authenticate_for Admin
  end
end

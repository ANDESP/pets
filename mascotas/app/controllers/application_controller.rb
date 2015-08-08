class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # Consultar si un usuario ha iniciado sesión
  user_signed_in?
  # usuario actual con sesión iniciada
  current_user
  # sesión del usuario actual
  user_session
end

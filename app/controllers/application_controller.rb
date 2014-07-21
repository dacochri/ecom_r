class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def format_time(date_time)
    date_time.strftime('%Y-%m-%d %H:%M %Z')
  end
end

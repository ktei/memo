class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def render_json(success, message = nil, data = nil)
    response = { success: success }
    response.merge!({ message: message }) if not message.nil?
    response.merge!({ data: data }) if not data.nil?
    render json: response
  end
end

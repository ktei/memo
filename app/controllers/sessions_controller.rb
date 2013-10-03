class SessionsController < ApplicationController
  def create
    respond_to do |format|
      format.json do
        input = params[:session]
        user = User.authenticate(input[:email], input[:password])
        if user.nil?
          render_json(false, ERRORS[:invalid_credential])
        else
          render_json(true)
        end
      end
    end
  end
end
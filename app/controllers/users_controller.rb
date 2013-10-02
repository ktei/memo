class UsersController < ApplicationController
  def create
    respond_to do |format|
      format.json do
        params.permit!
        user = User.new(params[:user])
        if user.save
          render :json => { success: true }
        else
          render :json => { success: false }
        end
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :name)
    end
end
class UsersController < ApplicationController
  def index
    @description = "The user list"
    @users = User.all
  end

  def import
    User.import(params[:file])
    redirect_to root_url, notice: "CSV file as been imported."
  end
end

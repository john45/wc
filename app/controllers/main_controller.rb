class MainController < ApplicationController
  def index
    session[:user_id] ||= User.create
    @user = session[:user_id]
  end
end

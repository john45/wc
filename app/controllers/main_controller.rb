class MainController < ApplicationController
  before_action :current_user

  def index
    @recepts = Recept.all
    @weather = {}
    @user.cities.map(&:name).each do |city|
      @recepts.each do |recept|
        a = Mechanize.new
        page = a.get(recept.link)
        form = page.form_with(recept.id_or_name.to_s => recept.id_name_form)
      end

    end
  end

  def search
    @city = City.new(name: params[:city])
    @user.cities << @city

    respond_to do |format|
      format.html {render or redirect_to wherever you need it}
      format.js
    end
  end


  private


  def current_user
    session[:user_id] ||= User.create.id
    @user = User.find(session[:user_id])
  end
end

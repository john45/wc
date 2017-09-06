class MainController < ApplicationController
  before_action :current_user

  def index
    @recepts = Recept.all.reverse
    @cities = {}
    @user.cities.map(&:name).each do |city|
      @weather = {}
      @recepts.each do |recept|
        a = Mechanize.new
        page = a.get(recept.link)

        parsered_page = if recept.link.include?('sinoptik.ua')
                          page.form_with(action: recept.id_or_name) do |f|
                            f.search_city = city
                          end.submit.parser
                          # else #recept.link.include?('meteoblue.com')
                          #   page.form_with(action: recept.id_or_name) do |f|
                          #                                     f.query = city
                          #                                   end.submit.parser
                        end
        metrics = {}
        puts a

        begin
          metrics[:min] = parsered_page.at_css(recept.min).text
          puts metrics[:min]
          metrics[:max] = parsered_page.at_css(recept.max).text
          metrics[:current] = parsered_page.at_css(recept.current).text
          metrics[:probability] = parsered_page.at_css(recept.probability).text
        rescue
        end

        @weather[recept.link] = metrics
      end

      @cities[city] = @weather
    end

    puts @cities # byebug
  end

  def search
    @city = City.new(name: params[:city])
    @user.cities << @city

    respond_to do |format|
      format.html { render || redirect_to(wherever(you(need(it)))) }
      format.js
    end
  end

  private

  def current_user
    session[:user_id] ||= User.create.id
    @user = User.find(session[:user_id])
  end
end

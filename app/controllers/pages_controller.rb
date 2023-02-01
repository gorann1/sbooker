class PagesController < ApplicationController

  def home

    @zones = Zone.all
    @countries = @zone&.countries || []
    @regions = @country&.regions || []


      @zone = Zone.find_by(id:params[:zone].presence)
      @country = Country.find_by(id:params[:country].presence)
      @region = Region.find_by(id:params[:region].presence)


  end



  def about
  end

  def contact

  end
end

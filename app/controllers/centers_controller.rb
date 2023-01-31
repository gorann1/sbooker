class CentersController < ApplicationController

  def index
      @q = Center.ransack(params[:q])
      @centers = @q.result(distinct: true)
  end
  def show
    @center = Center.find(params[:id])
  end
end

class CentersController < ApplicationController

  def index
      @q = Center.ransack(params[:q])
      @centers = @q.result(distinct: true)

  end
end

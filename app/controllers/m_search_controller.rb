class MSearchController < ApplicationController
  def index
  end

  def search
    @providers = Provider.search(params[:search]).order(:id)
    
     @facilities = Facility.search(params[:search]).order(:id)
     
      @procedures = Procedure.search(params[:search]).order(:id)
  end
end

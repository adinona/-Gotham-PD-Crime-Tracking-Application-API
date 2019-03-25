class InvestigationsController < ApplicationController
  before_action :set_investigation, only: [:show]


  swagger_controller :criminals, "Investigation Management"

  swagger_api :index do
    summary "Fetches all Investigations"
    notes "This lists all the Investigations"
  end


  swagger_api :show do
    summary "Shows one Investigation"
    param :path, :id, :integer, :required, "Investigation ID"
    notes "This lists details of one Investigation"
    response :not_found
  end




  def index
    @investigations = Investigation.all

    render json: @investigations
  end

  def show
    render json: @investigation

  end



  private
  def set_investigation
    @investigation = Investigation.find(params[:id])
  end

  def investigation_params
    params.require(:investigation).permit(:title, :description, :crime_location, :date_opened, :date_closed, :solved, :batman_involved)
  end
end

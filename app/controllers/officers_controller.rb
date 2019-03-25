class OfficersController < ApplicationController
  before_action :set_officer, only: [:show, :edit, :update, :destroy]

  swagger_controller :officers, "Officer Management"


  swagger_api :index do
    summary "Fetches all Officers"
    notes "This lists all the Officers"
  end

  swagger_api :show do
    summary "Shows one Officer"
    param :path, :id, :integer, :required, "Officer ID"
    notes "This lists details of one Officer"
    response :not_found
  end




  def index
    @officers = Officer.all
    render json: @officers

  end

  def show
    render json: @officer
  end




  private
  # Use callbacks to share common setup or constraints between actions.
  def set_officer
    @officer = Officer.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def officer_params
    params.require(:officer).permit(:first_name, :last_name, :rank, :ssn, :active, :unit_id)
  end


end

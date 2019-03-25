class CriminalsController < ApplicationController


  swagger_controller :criminals, "Criminals Management"

  swagger_api :index do
    summary "Fetches all Criminals"
    notes "This lists all the Criminals"
  end


  swagger_api :show do
    summary "Shows one Criminal"
    param :path, :id, :integer, :required, "Criminal ID"
    notes "This lists details of one Criminal"
    response :not_found
  end



  before_action :set_criminal, only: [:show]

  def index
    @criminals = Criminal.all
    render json: @criminals
  end


  def show
    render json: @criminal
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criminal
      @criminal = Criminal.find(params[:id])
    end

  end

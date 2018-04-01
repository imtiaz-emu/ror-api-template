class Api::V1::PublishersController < ApplicationController
  before_action :authenticate_admin, only: %i[update create destroy]
  before_action :set_publisher, only: [:show, :update, :destroy]

  # GET /api/v1/publishers
  def index
    @publishers = Publisher.all

    render json: @publishers
  end

  # GET /api/v1/publishers/1
  def show
    render json: @publisher
  end

  # POST /api/v1/publishers
  def create
    @publisher = Publisher.new(publisher_params)

    if @publisher.save
      render json: @publisher, status: :created, location: api_v1_publisher_url(@publisher)
    else
      render json: @publisher.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/publishers/1
  def update
    if @publisher.update(publisher_params)
      render json: @publisher
    else
      render json: @publisher.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/publishers/1
  def destroy
    @publisher.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_publisher
    @publisher = Publisher.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def publisher_params
    params.require(:publisher).permit(:name, :phone, :logo, :address, :proprietor, :discount_range)
  end
end

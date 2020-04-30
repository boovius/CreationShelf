class Api::V1::CreationsController < Api::ApiController
  include ActiveModel::Serializers::JSON

  def index
    render json: { data: Creation.all }, status: 200
  end

  def show
    id = creation_params.fetch(:id)
    begin
      c = Creation.find(id)
      render json: { data: c }, status: 200
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: "No Creation found with id: #{id}" }, status: 404
    end
  end

  private

  def creation_params
    params.permit(:id)
  end
end

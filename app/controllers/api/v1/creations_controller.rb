class Api::V1::CreationsController < Api::ApiController
  include ActiveModel::Serializers::JSON

  def index
    render json: { data: Creation.all }, status: 200
  end
end

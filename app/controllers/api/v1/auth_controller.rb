class Api::V1::AuthController < ApplicationController
  before_action :authorize_user!, only: [:show]

  def show
    render json: {
      id: current_user.id,
      username: current_user.username
    }
  end

  def create
    user = User.find_or_create_by(mobile: params[:mobile])
    render json: {
      id: user.id,
      mobile: user.mobile,
      jwt: JWT.encode({user_id: user.id}, ENV['JWT_SECRET'], ENV['JWT_ALGORITHM'])
    }
  end

end

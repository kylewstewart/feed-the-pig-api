class Api::V1::UsersController < ApplicationController

  def create
    user = User.find_or_create_by(mobile: params[:mobile])
    user.send_auth_code
    render json: {id: user.id}
  end

end
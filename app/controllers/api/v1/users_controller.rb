class Api::V1::UsersController < ApplicationController

  def create
    user = User.find_or_create_by(mobile: params[:mobile])
    begin
      user.send_auth_code
      response = {id: user.id}
    rescue
      response = {error: "that mobile number taste bad"}
    end

    render json: response
  end
end

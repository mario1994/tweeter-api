class AuthenticationController < ApplicationController
  # return auth token once user is authenticated
  skip_before_action :authorize_request, only: :authenticate
  
  def authenticate
    user = User.find_by(email:auth_params[:email])
    auth_token =
      AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    if auth_token == nil 
      response = {error: "Invalid email or password"}
    else
      response = {auth_token: auth_token, user: user }
    end
    json_response(response)
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end

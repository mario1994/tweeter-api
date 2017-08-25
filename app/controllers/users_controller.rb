class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authorize_request, only: [:index,:create,:show,:update,:destroy]
  # return authenticated token upon signup
  def create
    findUser = User.find_by(email:user_params[:email])
    findUserUsername = User.find_by(userName:user_params[:userName])
    if  findUser == nil and findUserUsername == nil

    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token, user: user }
    json_response(response, :created)
  elsif findUserUsername != nil and findUser != nil
    response = {error: "both username and email are already in use"}
    json_response (response)
  elsif findUserUsername != nil
    response = {error: "username is already in use"}
    json_response (response)
  else
    response = {error: "email is already in use"}
    json_response (response)
  end
  end

   def index
    @users = User.order("created_at DESC")
    json_response(@users)
  end

  # GET /tweets/:id
  def show
    json_response(@user)
  end

  # PUT /tweets/:id
  def update
    @user.update_attributes!(update_params)
    json_response(@user)
  end

  # DELETE /tweets/:id
  def destroy
    @user.destroy
    head :no_content
  end
  private

  def user_params
    params.permit(
      :firstName,
      :lastName,
      :userName,
      :country,
      :city,
      :dateOfBirth,
      :email,
      :aboutSelf,
      :smallUserProfilePicture,
      :largeUserProfilePicture,
      :password,
      :password_confirmation
    )
  end

  def update_params
    params.permit(
    :firstName,
      :lastName,
      :country,
      :city,
      :smallUserProfilePicture,
      :largeUserProfilePicture,
      :aboutSelf)
  end

  def set_user
    @user = User.find(params[:id])
  end
end

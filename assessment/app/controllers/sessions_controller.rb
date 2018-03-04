class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by(email: auth['email']) do |u|
      u.email = auth['info']['email']
    end
    session[:user_id] = @user.id
    render 'albums/index'
  end

private
 
  def auth
    request.env['omniauth.auth']
  end


end
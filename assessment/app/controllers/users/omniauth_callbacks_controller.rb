class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    #binding.pry
    @user = User.from_omniauth(request.env['omniauth.auth'])
    
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
    else
      redirect_to new_user_registration_url
    end
  end
end
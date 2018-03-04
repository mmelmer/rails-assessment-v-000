class CallbacksController < Devise::OmniauthCallbacksController
  
  def spotify
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
    redirect_to root_path
  end


  private

    def auth
      request.env['omniauth.auth']
    end


end
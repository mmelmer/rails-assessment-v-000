class User < ActiveRecord::Base
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:spotify]

  has_many :albums
  
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  def self.from_omniauth(auth)
    @user =User.find_or_create_by(uid: auth.uid) do |user|
      @user.provider = auth.provider
      @user.uid = auth.uid
      @user.email = auth.email
      @user.password = Devise.friendly_token[0,20]
    end
  end

end

class User < ActiveRecord::Base
  has_many :albums

   devise :database_authenticatable, :registerable, :recoverable, :rememberable, :omniauthable, omniauth_providers: %i[facebook]

  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "default_:style.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end


end

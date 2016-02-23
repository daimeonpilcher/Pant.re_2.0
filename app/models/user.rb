class User < ActiveRecord::Base
  #has_secure_password
  def self.omniauth(auth)
    where(auth.slice(:provder => auth.provider, :uid => auth.uid)).first_or_initialize.tap do |user|
      user.provder = auth.provider
      user.uid = auth.uid
      user.first_name = auth.first_name
      user.last_name = auth.last_name
      user.email = auth.info.email
      user.image = auth.info.image
      user.token = auth.credentials.token
      user.expires_at = Time.at(auth.credentials.expires_at)
      user.location = auth.info.location
      user.gender = auth.info.gender
      user.save!
    end

  end
end

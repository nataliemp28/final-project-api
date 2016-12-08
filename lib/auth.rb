require 'jwt'

#double check what this file actually does. Think it's to do with encrypting/decrypting the password/token.

class Auth
  ALGORITHM = 'HS256'

  def self.issue(payload, expiry_in_minutes=60*24*30)
    payload[:exp] = expiry_in_minutes.minutes.from_now.to_i
    JWT.encode(payload, auth_secret, ALGORITHM)
  end

  def self.decode(token, leeway=0)
    decoded = JWT.decode(token, auth_secret, true, { leeway: leeway, algorithm: ALGORITHM })
    HashWithIndifferentAccess.new(decoded[0])
  end

  def self.auth_secret
    ENV["AUTH_SECRET"]
  end
end

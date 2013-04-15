require "crx_appid/version"
require "openssl"
require "digest/sha2"

class CrxAppid
  def calculate(pem)
    Digest::SHA256.hexdigest(OpenSSL::PKey::RSA.new(pem).public_key.to_der)[0...32].tr('0-9a-f', 'a-p')
  end

  def calculate_from_file(pem)
    calculate(open(pem).read)
  end

  class << self
    def calculate(pem)
      new.calculate(pem)
    end

    def calculate_from_file(pem)
      new.calculate_from_file(pem)
    end
  end
end

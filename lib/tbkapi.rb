require "httparty"
require "digest/md5"
require "tbkapi/api_taobaoke"
require "tbkapi/version"

module Tbkapi

  TBURI = "http://gw.api.taobao.com/router/rest/"
  
  def system_params(method, api_key)
    {
      method: method,
      api_key: api_key,
      timestamp: Time.now.strftime("%F %T"),
      format: "json",
      v: "2.0",
      sign_method: "md5"
    }
  end

  def action_params
    {}
  end

  def get_sign(hash, secret)
    Digest::MD5.hexdigest(hash.sort.flatten.push(secret).unshift(secret).join(""))
  end

end

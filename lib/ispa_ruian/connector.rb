# -*- encoding : utf-8 -*-
require 'net/http'
require 'uri'

module IspaRuian

  class Connector



    def self.get(*params)
      curl = build_curl(params)
      curl.http_get do |curl|
        curl.headers['Accept'] = 'application/json'
        curl.headers['Content-Type'] = 'application/json'
      end
      
      
      perform_response curl
    end
    
    def self.post(url_params, post_data)
      curl = build_curl(url_params)
      curl.http_post(post_data.to_json) do |curl|
        curl.headers['Accept'] = 'application/json'
        curl.headers['Content-Type'] = 'application/json'
      end
      perform_response curl
    end


    private


    def self.build_url(params)
      URI.encode(([Configuration.api_url] + params).flatten.compact.join("/"))
    end
    
    def self.build_curl(params)
      c = Curl::Easy.new(build_url(params))
      c.http_auth_types = :basic
      c.username = IspaRuian::Configuration.login
      c.password = IspaRuian::Configuration.password
      c
    end

    def self.perform_response(curl)
      if curl.status == "200 OK"
      
        parsed_response = ::JSON.parse curl.body
        curl.close
      
        if parsed_response["success"]
          return parsed_response["data"]
        else
          return [] if parsed_response["message"] == "No items found"
          raise parsed_response["message"]
        end
      else
        curl_status = curl.status
        curl.close
        raise curl_status
      end

    end

  end

end
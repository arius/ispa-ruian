# -*- encoding : utf-8 -*-
require 'net/http'
require 'uri'

module IspaRuian

  class Connector



    def self.get(params, options = {})
      curl = build_curl(params, options)
      curl.http_get do |curl|
        curl.headers['Accept'] = 'application/json'
        curl.headers['Content-Type'] = 'application/json'
      end
      
      
      perform_response curl
    end
    
    def self.post(url_params, post_data, options = {})
      curl = build_curl(url_params, options)
      curl.http_post(post_data.to_json) do |curl|
        curl.headers['Accept'] = 'application/json'
        curl.headers['Content-Type'] = 'application/json'
      end
      perform_response curl
    end


    private


    def self.build_url(params, options)
      options.merge!(expanded: 1)
      p ([Configuration.api_url] + params).flatten.compact.join("/")
      encoded_uri = URI.encode(([Configuration.api_url] + params).flatten.compact.join("/") + "?" + options.to_query)
      p encoded_uri
      return encoded_uri
    end
    
    def self.build_curl(params, options = {})
      c = Curl::Easy.new(build_url(params, options))
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

require 'net/http'
require 'uri'
require 'curb'
require 'json'
require "ispa_ruian/version"
require "ispa_ruian/configuration"
require "ispa_ruian/connector"
require "ispa_ruian/autocomplete"
require "ispa_ruian/search"
require "ispa_ruian/address_place"


IspaRuian::Configuration.set_defaults

module IspaRuian
  
end

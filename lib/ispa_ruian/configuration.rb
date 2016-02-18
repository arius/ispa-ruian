# -*- encoding : utf-8 -*-
require 'singleton'

module IspaRuian

  class Configuration

    include Singleton

    class << self
      attr_accessor :login, :password, :api_url

      def configure(file_path = nil)
        set_defaults
        if block_given?
          yield self
        else
          file = File.open(file_path) if file_path && File.exists?(file_path)
          env = defined?(Rails) ? Rails.env : ENV['RACK_ENV']
          config = YAML.load(file)[env]
          if config.present?
            config.each_pair do |key, value|
              send("#{key}=", value)
            end
          end
        end
      end

      def set_defaults
        @api_url = 'http://ruian.ispa.cz/api'
      end

    end
  end

end
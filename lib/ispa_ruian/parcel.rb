# -*- encoding : utf-8 -*-
module IspaRuian

  class Parcel

    @model_name = "address-register-parcel"
    
    #http://ruian.ispa.cz/api/address-register-address-places/by-code/9695711
    def self.by_code(code, options = {})
      method_name = nil
      response = Connector.get([@model_name, method_name, code], options)
    end
    
    def self.by_polygon(data, options = {})
      method_name = "by-polygon"
      response = Connector.post([@model_name, method_name], data, options)
    end
    
    #/by-cadastral-area-and-parcel-number/788431/1
    def self.by_cadastral_area_and_parcel_number(area, code, options = {})
      method_name = "by-cadastral-area-and-parcel-number"
      response = Connector.get([@model_name, method_name, area, code], options)
    end
    
    #http://ruian.ispa.cz/api/address-register-search/by-circle/50.2399336/16.5188739/1000
    def self.by_circle(latitude, longitude, radius, options = {})
      method_name = "by-circle"
      response = Connector.get([@model_name, method_name, latitude, longitude, radius], options)
    end
    
    
 
   
   
  end

end
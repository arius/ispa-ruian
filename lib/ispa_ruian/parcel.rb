# -*- encoding : utf-8 -*-
module IspaRuian

  class Parcel

    @model_name = "address-register-parcel"
    
    #http://ruian.ispa.cz/api/address-register-address-places/by-code/9695711
    def self.by_code(code)
      method_name = nil
      response = Connector.get(@model_name, method_name, code)
    end
    
    def self.by_polygon(*params)
      method_name = "by-polygon"
      response = Connector.post([@model_name, method_name], *params)
    end
    
    #/by-cadastral-area-and-parcel-number/788431/1
    def self.by_cadastral_area_and_parcel_number(area, code)
      method_name = "by-cadastral-area-and-parcel-number"
      response = Connector.get(@model_name, method_name, area, code)
    end
    
    #http://ruian.ispa.cz/api/address-register-search/by-circle/50.2399336/16.5188739/1000
    def self.by_circle(latitude, longitude, radius)
      method_name = "by-circle"
      response = Connector.get(@model_name, method_name, latitude, longitude, radius)
    end
    
    
 
   
   
  end

end
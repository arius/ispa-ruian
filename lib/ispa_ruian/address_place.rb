# -*- encoding : utf-8 -*-
module IspaRuian

  class AddressPlace

    @model_name = "address-register-address-places"
    
    #http://ruian.ispa.cz/api/address-register-address-places/by-code/9695711
    def self.by_code(code)
      method_name = "by-code"
      response = Connector.get([@model_name, method_name, code])
    end
    
    #http://ruian.ispa.cz/api/address-register-address-places/by-codes
    def self.by_codes(*codes)
      method_name = "by-codes"
      response = Connector.post([@model_name, method_name], codes)
    end
    
    #http://ruian.ispa.cz/api/address-register-address-places/by-municipality/569852
    def self.by_municipality(code)
      method_name = "by-municipality"
      response = Connector.get([@model_name, method_name, code])
    end
    
    #http://ruian.ispa.cz/api/address-register-address-places/by-street/569852
    def self.by_street(code)
      method_name = "by-street"
      response = Connector.get([@model_name, method_name, code])
    end
    
    #http://ruian.ispa.cz/api/address-register-address-places/by-district/569852
    def self.by_district(code)
      method_name = "by-district"
      response = Connector.get([@model_name, method_name, code])
    end
    
    #http://ruian.ispa.cz/api/address-register-address-places/by-region/569852
    def self.by_region(code)
      method_name = "by-region"
      response = Connector.get([@model_name, method_name, code])
    end
    
    #http://ruian.ispa.cz/api/address-register-address-places/by-partOfMunicipality/569852
    def self.by_partOfMunicipality(code)
      method_name = "by-partOfMunicipality"
      response = Connector.get(@model_name, method_name, code)
    end
    
   
   
  end

end
# -*- encoding : utf-8 -*-
module IspaRuian

  class Autocomplete

    @model_name = "address-register-autocomplete"
    
    #http://ruian.ispa.cz/api/address-register-autocomplete/municipalities-with-parts-by-filter/Hol
    def self.municipalities_with_parts_by_filter(filter_param)
      method_name = "municipalities-with-parts-by-filter"
      response = Connector.get([@model_name, method_name, filter_param])
    end
    
    #http://ruian.ispa.cz/api/address-register-autocomplete/districts-by-filter/Pardub
    def self.districts_by_filter(filter_param)
      method_name = "districts-by-filter"
      response = Connector.get([@model_name, method_name, filter_param])
    end
    
    #http://ruian.ispa.cz/api/address-register-autocomplete/streets-by-filter/574988/Staroholická
    def self.streets_by_filter(city_code, filter_param)
      method_name = "streets-by-filter"
      response = Connector.get([@model_name, method_name, city_code, filter_param])
    end
    
    #http://ruian.ispa.cz/api/address-register-autocomplete/streets-by-part-of-city-filter/410471/Vyso
    def self.streets_by_part_of_city_filter(part_of_city_code, filter_param)
      method_name = "streets-by-part-of-city-filter"
      response = Connector.get([@model_name, method_name, part_of_city_code, filter_param])
    end
    
    #http://ruian.ispa.cz/api/address-register-autocomplete/house-numbers-by-street-code/370410
    def self.house_numbers_by_street_code(street_code)
      method_name = "house-numbers-by-street-code"
      response = Connector.get([@model_name, method_name, street_code])
    end
    
    #http://ruian.ispa.cz/api/address-register-autocomplete/house-numbers-without-street-by-city-code/574988
    def self.house_numbers_without_street_by_city_code(city_code)
      method_name = "house-numbers-without-street-by-city-code"
      response = Connector.get([@model_name, method_name, city_code])
    end
    
    #http://ruian.ispa.cz/api/address-register-autocomplete/house-numbers-without-street-by-part-of-city-code/410471
    def self.house_numbers_without_street_by_part_of_city_code(part_city_code)
      method_name = "house-numbers-without-street-by-part-of-city-code"
      response = Connector.get([@model_name, method_name, part_city_code])
    end
    

  end

end
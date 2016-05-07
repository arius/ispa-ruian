# -*- encoding : utf-8 -*-
module IspaRuian

  class RuianPlace < OpenStruct

    def parse_gps
      (gpsPoint || gps_point).gsub("(", "").gsub(")", "").split(",")
    end
    
    def gps
      [latitude, longitude]
    end
    
    def latitude
      parse_gps.first
    end
    
    def longitude
      parse_gps.last
    end
    
    def ruian_code
      code
    end
   
  end

end
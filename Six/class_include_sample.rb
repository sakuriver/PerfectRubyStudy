require '../Five/scenario_standard'
require '../Utility/app_logger'

log_sampler = AppLogging::ApplicationLogger.new

module CarRepairShop
    def car_repair_receive
        :car_repair_receive
    end
    def car_repair_start
        :car_repair_start
    end
    def car_repair_end
        :car_repair_end
    end
    def car_owner_return
        :car_owner_return
    end
end

module LuggageWarehouse
   def status_update
   end
   def stock_quantity_updated
   end
end
 
module InHouseParkingLot
    
end

module ShiftInformation
    def member_shift_schedule(member_id)
    end
    def member_shift_setup(member_infos)
    end
end

class ShippingCompany
    include CarRepairShop
    include LuggageWarehouse
    include InHouseParkingLot
    include ShiftInformation
end

driver_company = ShippingCompany.new
log_sampler.info(driver_company)
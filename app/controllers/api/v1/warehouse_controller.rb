module Api
  module V1
 	class WarehouseController < ApplicationController
 		def fulfilment
 			render :json => ApplicationRecord.products
 		end 
	end
 end
end  	



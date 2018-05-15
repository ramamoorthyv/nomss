module Api
  module V1
 	class WarehouseController < ApplicationController

 		def fulfilment
 			render :json => [1,2]
 		end 
	end
 end
end  	



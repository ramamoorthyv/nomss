module Api
  module V1
 	class WarehouseController < ApplicationController
 		def fulfilment
 			unfulfillable = []
 			unless params[:orderIds].blank?
 				params[:orderIds].each do |orderId|
 					if !is_order_fullfilled?(orderId)
 						unfulfillable.push(orderId)
 					end 
 				end 
 				render :json => unfulfillable
 			end  			
 		end

 		private 

 		def is_order_fullfilled?(orderId) 	
 					
 		end

 		def update_order_status()
 		end 

	end
 end
end  	



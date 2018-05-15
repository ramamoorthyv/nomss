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
 				render :json => { :unfulfillable => unfulfillable }
 			end  			
 		end

 		def order
 			
 			order = ApplicationRecord.find_order(params[:orderId].to_i) 			
 			render :json => { :order => order }
 		end 

 		def product
 			product = ApplicationRecord.find_product(params[:productId].to_i) 	
 			render :json => { :product => product }
 		end 

 		private 

 		def is_order_fullfilled?(orderId) 	
 			order = ApplicationRecord.find_order(orderId) 			
 			order[:items].each do |item|
 				if !is_item_available?(item)
 					return false 
 				end 
 			end 
 			true 
 		end

 		def is_item_available?(item)
 			product = ApplicationRecord.find_product(item[:productId]) 
 			if item[:quantity] >= product[:quantityOnHand]
 				return false 
 			else
 				return true 
 			end  
 		end 

 end
 end
end  	



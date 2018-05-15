Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	namespace :api do
	  namespace :v1 do
	    post 'warehouse/fulfilment'
	    get 'order/:orderId' => "warehouse#order",:as => 'order'
	    get 'product/:productId' => "warehouse#product" 
	  end
	end
end

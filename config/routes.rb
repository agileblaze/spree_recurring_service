#Rails.application.routes.draw do
  #get "subscription_billing/index"

Spree::Core::Engine.routes.prepend do
  #get "subscription_billing/index"
  #resources :promoted_items
  match 'accounts' =>'subscription_billing#accounts',:as=>'accounts'

  namespace :admin do
    resources :subscription_billing do
      collection do
      	get 'accounts'
        get 'plans'
        get 'subscriptions'
        get 'new_plan'
        get 'configuration'
        post 'create_configuration'
      end
    end
  end
end
	